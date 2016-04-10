grammar Grammar;

options {
  language = Ruby;
  defaultErrorHandler=false;
}

expression returns[ value ]
  : a=NUMBER '+' b=NUMBER { $value = $a.text.to_i + $b.text.to_i }
  | a=NUMBER '-' b=NUMBER { $value = $a.text.to_i - $b.to_i }
  ;

NUMBER: ( '0' .. '9' )+;
SPACE: ' '+ { $channel = HIDDEN };