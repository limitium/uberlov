<? echo implode(',',array($location->getId(),
  $location->getName(),
  $location->getLatitude(),
  $location->getLongitude(),
  OZIConverter::toOZITime(strtotime($location->getCreatedAt())),
  0,
  0,
  3,
  0,
  65535,
  truncate_text($location->getDescription(),100),
  0,
  0,
  0,
  -777,
  6,
  0,
  17,
  0,
  10.0,
  2,
  '',
  '',
  "\r\n"
  )); ?>