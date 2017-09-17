#!/sbin/sh

#China Telecom operator
if [ "`grep "ro.product.locale=en-US" /system/build.prop`" ]
then
  sed -i 's/ro.product.locale=en-US/ro.product.locale=zh-CN/g' /system/build.prop
fi

if [ -z "`grep "China Telecom" /system/build.prop`" ]
then
echo "" >> /system/build.prop
echo "# China Telecom Patch" >> /system/build.prop

if [ -z "`grep "persist.sys.timezone" /system/build.prop`" ]
then
  echo 'persist.sys.timezone=Asia/Shanghai' >> /system/build.prop
fi

if [ -z "`grep "gsm.network.type" /system/build.prop`" ]
then
  echo 'gsm.network.type=EvDo-rev.A' >> /system/build.prop
fi

if [ -z "`grep "ril.subscription.types" /system/build.prop`" ]
then
  echo 'ril.subscription.types=RUIM' >> /system/build.prop
fi

if [ -z "`grep "ro.cdma.factory" /system/build.prop`" ]
then
  echo 'ro.cdma.factory=china' >> /system/build.prop
fi

if [ -z "`grep "ro.build.target_country" /system/build.prop`" ]
then
  echo 'ro.build.target_country=CN' >> /system/build.prop
fi

if [ -z "`grep "ro.build.target_operator" /system/build.prop`" ]
then
  echo 'ro.build.target_operator=CTC' >> /system/build.prop
fi

if [ -z "`grep "ro.cdma.home.operator.numeric" /system/build.prop`" ]
then
  echo 'ro.cdma.home.operator.numeric=46003' >> /system/build.prop
fi

if [ -z "`grep "ro.cdma.home.operator.alpha" /system/build.prop`" ]
then
  echo 'ro.cdma.home.operator.alpha=中国电信' >> /system/build.prop
fi

if [ -z "`grep "ro.ril.oem.nosim.ecclist" /system/build.prop`" ]
then
  echo 'ro.ril.oem.nosim.ecclist=911,112,120,122,110,119' >> /system/build.prop
fi
fi
