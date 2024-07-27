SELECT
    *
FROM
    `mbarna-kubernetes-clusters.was_there_extreme_weather`
    LEFT OUTER JOIN `mbarna-kubernetes-clusters.repositories_that_mention_extreme_weather` USING (date)
ORDER BY
    date
