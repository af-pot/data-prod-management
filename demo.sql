WITH first_try AS (
  SELECT
    id,
    doc,
    instruction
  FROM git
)

, idea AS (
  SELECT
    i_id,
    user_story,
    business_impact,
    data_explore,
    architecture,
    model
  FROM initiatives
)

SELECT
  *
FROM first_try
JOIN idea
 ON first_try.id = idea.i_id
