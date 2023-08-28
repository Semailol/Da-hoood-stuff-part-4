-- All positions are Middle, Left, Right
-- Set middle to 2,4,6,8,10
getgenv().Settings =  {
    ['Owner'] = 'preachdied';
    ['Position'] = 'Right';
    ['Distance'] = 1;
    ['Sound'] = 7209760990;
    ['Reach'] = true;
};

getgenv().Commands =  {
    ['Summon'] = 'Summon!';
    ['Multi'] = 'Multi!';
    ['Grow'] = 'Grow!';
    ['Egar'] = 'Egar!';
    ['Eren'] = 'Eren!';
    ['Aura'] = 'Aura!';
    ['Vanish'] = 'Ascend!';
    ['Mimic'] = 'Mimic!';
    ['Barrage'] = 'Barrage!';
    ['Stab'] = 'Stab!';
    ['Banish'] = 'Banish!';
    ['Reset'] = 'Stop!';
};

loadstring(game:HttpGet('https://gitlab.com/swagstando/swagstando/-/raw/main/swagstando'))();