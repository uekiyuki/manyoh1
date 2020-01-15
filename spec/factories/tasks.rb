# 
FactoryBot.define do
  
  factory :task do
    title { 'タイトル1' }
    content { 'コンテント1' }
    time_limit {Time.now}
    status {"作業中"}
    priority {'low'}
  end

  factory :second_task, class: Task do
    title { 'タイトル2' }
    content { 'コンテント2' }
    time_limit {Time.now}
    status {"完了"}
    priority {'medium'}
  end

  factory :third_task, class: Task do
    title { 'タイトル3' }
    content { 'コンテント3' }
    time_limit {Time.now}
    status {"未着手"}
    priority {'high'}
  end

end

