#/bin/bash
smarthomeNGconfig=/mnt2/RockOn_Configs/config/smarthomeNGconfig
docker build -t smarthome-ng .
docker run                                                             \
  -v $smarthomeNGconfig/etc:/usr/local/smarthome/etc                                      \
  -v $smarthomeNGconfig/items:/usr/local/smarthome/items                                  \
  -v $smarthomeNGconfig/logics:/usr/local/smarthome/logics                                \
  -v $smarthomeNGconfig/scenes:/usr/local/smarthome/scenes                                \
  -v $smarthomeNGconfig/tools:/usr/local/smarthome/tools                                  \
  -v $smarthomeNGconfig/var:/usr/local/smarthome/var                                      \
  -v $smarthomeNGconfig/plugins/ag980:/usr/local/smarthome/plugins/ag980                  \
  -v $smarthomeNGconfig/plugins/logiceditor:/usr/local/smarthome/plugins/logiceditor      \
  -v $smarthomeNGconfig/plugins/lohberger:/usr/local/smarthome/plugins/lohberger          \
  -v $smarthomeNGconfig/plugins/uzsu:/usr/local/smarthome/plugins/uzsu                    \
  -v $smarthomeNGconfig/plugins/whatsapp:/usr/local/smarthome/plugins/whatsapp            \
  -v $smarthomeNGconfig/plugins/denon:/usr/local/smarthome/plugins/denon                  \
  -v $smarthomeNGconfig/plugins/wol:/usr/local/smarthome/plugins/wol                      \
  -v $smarthomeNGconfig/plugins/speech:/usr/local/smarthome/plugins/speech                \
  -v /dev/Lohberger:/dev/Lohberger                                                        \
  -v /dev/TEAC:/dev/TEAC                                                                  \
  -p 2323:2323                                                                            \
  -p 2424:2424                                                                            \
  -p 2788:2788                                                                            \
  -i -t smarthome-ng                                                                      \
  /usr/local/smarthome/bin/smarthome.py -d  ## could also run bash
