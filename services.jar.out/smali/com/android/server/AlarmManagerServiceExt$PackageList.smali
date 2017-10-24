.class Lcom/android/server/AlarmManagerServiceExt$PackageList;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageList"
.end annotation


# instance fields
.field mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRegExpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4010
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 4012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    .line 4008
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4015
    if-nez p1, :cond_0

    .line 4016
    return-void

    .line 4018
    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4019
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4020
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4014
    :cond_1
    :goto_0
    return-void

    .line 4023
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4024
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4061
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4059
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4044
    if-nez p1, :cond_0

    .line 4045
    const/4 v3, 0x0

    return v3

    .line 4047
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4048
    .local v0, "match":Z
    if-nez v0, :cond_2

    .line 4049
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "regExp$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4050
    .local v1, "regExp":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4051
    const/4 v0, 0x1

    .line 4056
    .end local v0    # "match":Z
    .end local v1    # "regExp":Ljava/lang/String;
    .end local v2    # "regExp$iterator":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public loadAppSync3PlusBlackList()V
    .locals 1

    .prologue
    .line 4080
    const-string/jumbo v0, ".*reminder.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4081
    const-string/jumbo v0, ".*alert.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4082
    const-string/jumbo v0, "com.sec.screencheck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4083
    const-string/jumbo v0, "com.sec.dsm.system"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4084
    const-string/jumbo v0, "com.samsung.android.fmm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4085
    const-string/jumbo v0, "com.samsung.ssd.wolfserver"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4086
    const-string/jumbo v0, "ch.bitspin.timely"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4087
    const-string/jumbo v0, "com.nhn.android.nmap"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4088
    const-string/jumbo v0, "com.qihoo.security"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4089
    const-string/jumbo v0, ".*vodafone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4092
    const-string/jumbo v0, ".*vzw.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4093
    const-string/jumbo v0, ".*verizon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4094
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-eqz v0, :cond_0

    .line 4095
    const-string/jumbo v0, ".*amazon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4096
    const-string/jumbo v0, "com.audible.application"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4097
    const-string/jumbo v0, "com.imdb.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4098
    const-string/jumbo v0, "com.amazon.fv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4099
    const-string/jumbo v0, "com.gotv.nflgamecenter.us.lite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4100
    const-string/jumbo v0, "com.slacker.radio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4101
    const-string/jumbo v0, "com.telecomsys.directedsms.android.SCG"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4102
    const-string/jumbo v0, "com.LogiaGroup.LogiaDeck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4103
    const-string/jumbo v0, "com.vznavigator.Generic"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4104
    const-string/jumbo v0, "com.cequint.ecid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4105
    const-string/jumbo v0, "com.vcast.mediamanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4106
    const-string/jumbo v0, "com.sec.android.app.cmas"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4107
    const-string/jumbo v0, "com.samsung.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4108
    const-string/jumbo v0, "com.sec.android.app.setupwizard"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4109
    const-string/jumbo v0, "com.samsung.vvm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4110
    const-string/jumbo v0, "com.samsung.carrier.logcollector"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4111
    const-string/jumbo v0, "com.samsung.sdm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4112
    const-string/jumbo v0, "com.samsung.syncmlservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4113
    const-string/jumbo v0, "com.samsung.syncmlphonedataservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4114
    const-string/jumbo v0, "com.samsung.sdm.sdmviewer"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4115
    const-string/jumbo v0, "com.samsung.PAYGPrePayDetection"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4116
    const-string/jumbo v0, "com.fusionone.android.sync.vzbuaclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4120
    :cond_0
    const-string/jumbo v0, ".*att.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4121
    const-string/jumbo v0, ".*mizmowireless.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4122
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    if-eqz v0, :cond_1

    .line 4123
    const-string/jumbo v0, "com.welldoc.diabetesmanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4124
    const-string/jumbo v0, "deezer.android.app"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4128
    :cond_1
    const-string/jumbo v0, ".*sprint.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4129
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    if-eqz v0, :cond_2

    .line 4130
    const-string/jumbo v0, "com.airg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4131
    const-string/jumbo v0, "com.amazon.mShop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4132
    const-string/jumbo v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4133
    const-string/jumbo v0, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4134
    const-string/jumbo v0, "com.amazon.mp3"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4135
    const-string/jumbo v0, "com.amazon.clouddrive.photos"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4136
    const-string/jumbo v0, "com.boostmobile.boosttv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4137
    const-string/jumbo v0, "com.coremobility.app.vnotes"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4138
    const-string/jumbo v0, "com.ebay.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4139
    const-string/jumbo v0, "com.familyandco.framilywall"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4140
    const-string/jumbo v0, "com.handmark.expressweather"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4141
    const-string/jumbo v0, "com.itsoninc.android.itsonclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4142
    const-string/jumbo v0, "com.itsoninc.android.itsonservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4143
    const-string/jumbo v0, "com.itsoninc.android.uid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4144
    const-string/jumbo v0, "com.kineto.smartwifi"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4145
    const-string/jumbo v0, "com.livewiremobile.musicstore.boost"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4146
    const-string/jumbo v0, "com.locationlabs.sparkle.yellow.pre"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4147
    const-string/jumbo v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4148
    const-string/jumbo v0, "com.nascar.nascarmobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4149
    const-string/jumbo v0, "com.nbadigital.gametimelite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4150
    const-string/jumbo v0, "com.nextradioapp.nextradio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4151
    const-string/jumbo v0, "com.oem.smartwifisupport"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4152
    const-string/jumbo v0, "com.pinsight.v1"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4153
    const-string/jumbo v0, "com.smithmicro.EDM"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4154
    const-string/jumbo v0, "com.smithmicro.mnd"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4155
    const-string/jumbo v0, "com.soleo.numbersearch"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4156
    const-string/jumbo v0, "com.spotify.music"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4157
    const-string/jumbo v0, "com.telenav.app.android.scout_us"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4158
    const-string/jumbo v0, "com.ubercab"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4159
    const-string/jumbo v0, "com.wipit.android.boostwallet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4160
    const-string/jumbo v0, "msgplus.jibe.sca"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4161
    const-string/jumbo v0, "com.privacystar.android.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4162
    const-string/jumbo v0, "com.playphone.gamestore"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4163
    const-string/jumbo v0, "com.livewiremobile.musicstore.vmu"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4167
    :cond_2
    const-string/jumbo v0, ".*tmobile.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4168
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    if-eqz v0, :cond_3

    .line 4169
    const-string/jumbo v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4170
    const-string/jumbo v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4171
    const-string/jumbo v0, "com.customermobile.preload"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4175
    :cond_3
    const-string/jumbo v0, ".*metro.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4176
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->MPCS:Z

    if-eqz v0, :cond_4

    .line 4177
    const-string/jumbo v0, "com.tmobile.pr.adapt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4178
    const-string/jumbo v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4179
    const-string/jumbo v0, "com.mobileposse.client"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4180
    const-string/jumbo v0, "com.sec.tetheringprovision"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4184
    :cond_4
    const-string/jumbo v0, ".*tracfone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4187
    const-string/jumbo v0, ".*uscc.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4188
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    if-eqz v0, :cond_5

    .line 4189
    const-string/jumbo v0, "com.cequint.ecid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4190
    const-string/jumbo v0, "com.synchronoss.sm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4191
    const-string/jumbo v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4192
    const-string/jumbo v0, "com.LogiaGroup.LogiaDeck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4193
    const-string/jumbo v0, "com.zed.TrdWapLauncher"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4194
    const-string/jumbo v0, "com.amazon.windowshop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4198
    :cond_5
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    if-eqz v0, :cond_6

    .line 4199
    const-string/jumbo v0, "com.nttdocomo.android.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4200
    const-string/jumbo v0, "jp.co.nttdocomo.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4201
    const-string/jumbo v0, "com.ipg.gguide.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4202
    const-string/jumbo v0, "com.rsupport.rs.activity.ntt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4203
    const-string/jumbo v0, "com.mcafee.vsm_android_dcm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4204
    const-string/jumbo v0, "com.mcafee.safecall.docomo"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4205
    const-string/jumbo v0, "com.mcafee.android.scanservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4206
    const-string/jumbo v0, "jp.id_credit_sp.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4207
    const-string/jumbo v0, "jp.dmapnavi.navi02"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4208
    const-string/jumbo v0, "jp.co.mcdonalds.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4209
    const-string/jumbo v0, "jp.co.lawson.activity"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4079
    :cond_6
    return-void
.end method

.method public loadAppSyncBlackList()V
    .locals 1

    .prologue
    .line 4065
    const-string/jumbo v0, ".*alarm.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4066
    const-string/jumbo v0, ".*clock.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4068
    const-string/jumbo v0, "com.sec\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4069
    const-string/jumbo v0, "com.sec.epdg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4070
    const-string/jumbo v0, "com.samsung\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4071
    const-string/jumbo v0, "com.iloen.melon"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4072
    const-string/jumbo v0, "com.iloen.melon.tablet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4073
    const-string/jumbo v0, ".*knox.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4074
    const-string/jumbo v0, "android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4075
    const-string/jumbo v0, ".*email.ui"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4076
    const-string/jumbo v0, ".*shealth.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 4064
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4033
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4034
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4035
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4037
    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "regExp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4038
    .local v1, "regExp":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4040
    .end local v1    # "regExp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
