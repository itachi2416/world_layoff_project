SELECT * FROM layoffs_staging1;

SELECT *,
ROW_NUMBER () OVER(
PARTITION BY company,location, industry,total_laid_off,percentage_laid_off,`date`,stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging1
;

WITH dup_cte AS
(
SELECT *,
ROW_NUMBER () OVER(
PARTITION BY company,location, industry,total_laid_off,percentage_laid_off,`date`,stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging1
)
SELECT * FROM dup_cte
WHERE row_num > 1;


SELECT * FROM layoffs_staging1
WHERE company='Oda';

WITH dup_cte AS
(
SELECT *,
ROW_NUMBER () OVER(
PARTITION BY company,location, industry,total_laid_off,percentage_laid_off,`date`,stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging1
)
DELETE
FROM dup_cte
WHERE row_num > 1;

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM layoffs_staging2;

insert into layoffs_staging2
SELECT *,
ROW_NUMBER () OVER(
PARTITION BY company,location, industry,total_laid_off,percentage_laid_off,`date`,stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging1;


SELECT * FROM layoffs_staging2
WHERE row_num>1;

DELETE 
FROM layoffs_staging2
WHERE row_num>1;
SELECT * FROM layoffs_staging2;
SELECT company, TRIM(company) FROM layoffs_staging2;

update layoffs_staging2
SET company=TRIM(company);
SELECT DISTINCT(industry) FROM layoffs_staging2;

SELECT * FROM layoffs_staging2
WHERE industry LIKE'Crypto%';

UPDATE layoffs_staging2
SET industry='Crypto'
WHERE industry like 'Crypto%';

UPDATE layoffs_staging2
SET country='United States'
WHERE country like 'United States%';

SELECT `date`,str_to_date(`date`,'%m/%d/%Y') 
From layoffs_staging2;

update layoffs_staging2
SET `date` = str_to_date(`date`,'%m/%d/%Y');

SELECT * 
From layoffs_staging2;

ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;

SELECT total_laid_off, percentage_laid_off
FROM layoffs_staging2
WHERE total_laid_off = '' AND percentage_laid_off ='';


DELETE 
FROM layoffs_staging2
WHERE total_laid_off = '' AND percentage_laid_off ='';

SELECT *
FROM layoffs_staging2
where industry='';

Update layoffs_staging2
SET industry= null
where industry='';

SELECT *
FROM layoffs_staging2
WHERE company = 'Airbnb';

select * FROM 
layoffs_staging2 t1
join layoffs_staging2 t2
on t1.company=t2.company
where t1.industry is null
AND t2.industry is not null;

update layoffs_staging2 t1
join layoffs_staging2 t2
on t1.company=t2.company
SET t1.industry =t2.industry
where t1.industry is null
AND t2.industry is not null;

select *
from layoffs_staging2;

ALTER TABLE layoffs_staging2
DROP COLUMN row_num;


select *
from layoffs_staging2;











