.class public abstract Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;
.super Landroid/os/Binder;
.source "IMilkService.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/IMilkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/IMilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/IMilkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.music.service.milk.IMilkService"

.field static final TRANSACTION_addFavorite:I = 0x68

.field static final TRANSACTION_addFavoriteStation:I = 0x3b

.field static final TRANSACTION_addMilkTrackList:I = 0x4a

.field static final TRANSACTION_addPlaylistTracks:I = 0xd

.field static final TRANSACTION_addSmartStationToMyStation:I = 0x48

.field static final TRANSACTION_addToDBAfterGetCreatedSmartStation:I = 0x49

.field static final TRANSACTION_adjustmentMusicVideo:I = 0x65

.field static final TRANSACTION_advertisementRequest:I = 0x29

.field static final TRANSACTION_audioInterruptRequest:I = 0x2a

.field static final TRANSACTION_checkDRMLicense:I = 0x57

.field static final TRANSACTION_checkFavorite:I = 0x6c

.field static final TRANSACTION_checkPayPromotion:I = 0x56

.field static final TRANSACTION_checkSubscriptionUser:I = 0x76

.field static final TRANSACTION_completeOrder:I = 0x2d

.field static final TRANSACTION_createPersonalStation:I = 0x40

.field static final TRANSACTION_createPlaylist:I = 0x9

.field static final TRANSACTION_createSmartStation:I = 0x47

.field static final TRANSACTION_deleteDownloadableDeivces:I = 0x39

.field static final TRANSACTION_deleteExpiredPopups:I = 0x5c

.field static final TRANSACTION_deleteFavorite:I = 0x69

.field static final TRANSACTION_deleteFavoriteTrackList:I = 0x6a

.field static final TRANSACTION_deletePlaylist:I = 0xc

.field static final TRANSACTION_deletePlaylistTracks:I = 0xf

.field static final TRANSACTION_deleteRadioHistory:I = 0x6f

.field static final TRANSACTION_drmLicenseComplete:I = 0x58

.field static final TRANSACTION_drmLicenseExpiredTest:I = 0x78

.field static final TRANSACTION_getAccessToken:I = 0x6

.field static final TRANSACTION_getAlbumImageUrls:I = 0x77

.field static final TRANSACTION_getAlbumInfo:I = 0x18

.field static final TRANSACTION_getAlbumTracks:I = 0x19

.field static final TRANSACTION_getAllFavoriteStations:I = 0x3f

.field static final TRANSACTION_getAllPersonalStations:I = 0x45

.field static final TRANSACTION_getArtistAlbums:I = 0x1c

.field static final TRANSACTION_getArtistInfo:I = 0x1a

.field static final TRANSACTION_getArtistMusicVideos:I = 0x1e

.field static final TRANSACTION_getArtistRelatedArtists:I = 0x1d

.field static final TRANSACTION_getArtistTracks:I = 0x1b

.field static final TRANSACTION_getBixbyRuleStations:I = 0x75

.field static final TRANSACTION_getCategoryDetailGenreAlbumsInfo:I = 0x22

.field static final TRANSACTION_getCategoryDetailGenreArtistsInfo:I = 0x23

.field static final TRANSACTION_getCategoryDetailGenreChartsInfo:I = 0x21

.field static final TRANSACTION_getCategoryDetailPeriodAlbumsInfo:I = 0x25

.field static final TRANSACTION_getCategoryDetailPeriodArtistsInfo:I = 0x26

.field static final TRANSACTION_getCategoryDetailPeriodChartsInfo:I = 0x24

.field static final TRANSACTION_getDownloadableDeivces:I = 0x38

.field static final TRANSACTION_getEventPopup:I = 0x5a

.field static final TRANSACTION_getEventWeb:I = 0x59

.field static final TRANSACTION_getFavorite:I = 0x6b

.field static final TRANSACTION_getLyrics:I = 0x63

.field static final TRANSACTION_getMusicCateogoryList:I = 0x13

.field static final TRANSACTION_getMusicVideoPlay:I = 0x66

.field static final TRANSACTION_getNoticeList:I = 0x72

.field static final TRANSACTION_getOnDeviceRecommendSearchKeywords:I = 0x62

.field static final TRANSACTION_getPaymentDataSubscription:I = 0x2b

.field static final TRANSACTION_getPaymentDataTrack:I = 0x2c

.field static final TRANSACTION_getPersonalStation:I = 0x44

.field static final TRANSACTION_getPickDetail:I = 0x20

.field static final TRANSACTION_getPickList:I = 0x1f

.field static final TRANSACTION_getPlaylist:I = 0xa

.field static final TRANSACTION_getPlaylistTracks:I = 0xe

.field static final TRANSACTION_getProperStationName:I = 0x46

.field static final TRANSACTION_getPurchasedDrmTracks:I = 0x30

.field static final TRANSACTION_getPurchasedSubscriptions:I = 0x35

.field static final TRANSACTION_getPurchasedTracks:I = 0x2f

.field static final TRANSACTION_getRadioHistory:I = 0x6e

.field static final TRANSACTION_getRadioPlayLimitInfo:I = 0x70

.field static final TRANSACTION_getRecommendRadios:I = 0x64

.field static final TRANSACTION_getRecommendStationinfo:I = 0x74

.field static final TRANSACTION_getSearchAutoCompletes:I = 0x5e

.field static final TRANSACTION_getSearchPresets:I = 0x5d

.field static final TRANSACTION_getSearchResults:I = 0x5f

.field static final TRANSACTION_getServerTime:I = 0x67

.field static final TRANSACTION_getStationInfo:I = 0x43

.field static final TRANSACTION_getStoreData:I = 0x8

.field static final TRANSACTION_getStoreDisplayDetailPage:I = 0x16

.field static final TRANSACTION_getStoreMainPage:I = 0x14

.field static final TRANSACTION_getStoreTopNewUpdate:I = 0x15

.field static final TRANSACTION_getTopChartTracks:I = 0x17

.field static final TRANSACTION_getTrackDetail:I = 0x12

.field static final TRANSACTION_getTrackPlayDevicePermission:I = 0x71

.field static final TRANSACTION_getUser:I = 0x31

.field static final TRANSACTION_getVideoCp:I = 0x51

.field static final TRANSACTION_getVoucher:I = 0x32

.field static final TRANSACTION_isClickedToggleButton:I = 0x52

.field static final TRANSACTION_isDormancyMode:I = 0x4d

.field static final TRANSACTION_isNetworkTransportInitialized:I = 0x79

.field static final TRANSACTION_isVideoAdOn:I = 0x4f

.field static final TRANSACTION_loadSettings:I = 0x37

.field static final TRANSACTION_modSongRequest:I = 0x27

.field static final TRANSACTION_radioSongRequest:I = 0x28

.field static final TRANSACTION_redeemVoucher:I = 0x34

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerVoucher:I = 0x33

.field static final TRANSACTION_removeFavoriteStations:I = 0x3d

.field static final TRANSACTION_removePersonalStation:I = 0x41

.field static final TRANSACTION_reorderPlaylistTracks:I = 0x10

.field static final TRANSACTION_replaceDeepLinkStation:I = 0x3c

.field static final TRANSACTION_requestLogin:I = 0x5

.field static final TRANSACTION_requestLyric:I = 0x6d

.field static final TRANSACTION_saveSettings:I = 0x36

.field static final TRANSACTION_seedSearch:I = 0x61

.field static final TRANSACTION_seedSearchAutoCompletes:I = 0x60

.field static final TRANSACTION_sendErrorLog:I = 0x73

.field static final TRANSACTION_setClickedToggleButton:I = 0x53

.field static final TRANSACTION_setDormancyMode:I = 0x4e

.field static final TRANSACTION_setVideoAdOn:I = 0x50

.field static final TRANSACTION_setVideoAdPlayTime:I = 0x4b

.field static final TRANSACTION_shouldPlayVideoAd:I = 0x4c

.field static final TRANSACTION_startClient:I = 0x4

.field static final TRANSACTION_startPrefetch:I = 0x11

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_subscriptionDeduction:I = 0x55

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_updateBlockedTrack:I = 0x3a

.field static final TRANSACTION_updateDoNotShowTime:I = 0x5b

.field static final TRANSACTION_updateFavoriteStationOrdinals:I = 0x3e

.field static final TRANSACTION_updatePersonalStations:I = 0x42

.field static final TRANSACTION_updatePlaylist:I = 0xb

.field static final TRANSACTION_updateSubscription:I = 0x2e

.field static final TRANSACTION_updateUserInfo:I = 0x7

.field static final TRANSACTION_verifyTracks:I = 0x54


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.app.music.service.milk.IMilkService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.android.app.music.service.milk.IMilkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/music/service/milk/IMilkService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 38
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 1582
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v4, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    move-result-object v5

    .line 50
    .local v5, "_arg0":Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->registerCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)I

    move-result v36

    .line 51
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    const/4 v4, 0x1

    goto :goto_0

    .line 57
    .end local v5    # "_arg0":Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
    .end local v36    # "_result":I
    :sswitch_2
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    move-result-object v5

    .line 60
    .restart local v5    # "_arg0":Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->unregisterCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v4, 0x1

    goto :goto_0

    .line 66
    .end local v5    # "_arg0":Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
    :sswitch_3
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->stop()V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v4, 0x1

    goto :goto_0

    .line 73
    :sswitch_4
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 76
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->startClient(I)I

    move-result v36

    .line 77
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v4, 0x1

    goto :goto_0

    .line 83
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_5
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 87
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    .line 88
    .local v6, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->requestLogin(IZ)I

    move-result v36

    .line 89
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 87
    .end local v6    # "_arg1":Z
    .end local v36    # "_result":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 95
    .end local v5    # "_arg0":I
    :sswitch_6
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 98
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAccessToken(I)Ljava/lang/String;

    move-result-object v36

    .line 99
    .local v36, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 105
    .end local v5    # "_arg0":I
    .end local v36    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 109
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    sget-object v4, Lcom/samsung/android/app/music/common/model/PushInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/model/PushInfo;

    .line 117
    .local v7, "_arg2":Lcom/samsung/android/app/music/common/model/PushInfo;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updateUserInfo(ILjava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;)I

    move-result v36

    .line 118
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 115
    .end local v7    # "_arg2":Lcom/samsung/android/app/music/common/model/PushInfo;
    .end local v36    # "_result":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Lcom/samsung/android/app/music/common/model/PushInfo;
    goto :goto_2

    .line 124
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Lcom/samsung/android/app/music/common/model/PushInfo;
    :sswitch_8
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getStoreData(I)I

    move-result v36

    .line 128
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 134
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_9
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 138
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 139
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->createPlaylist(ILjava/lang/String;)I

    move-result v36

    .line 140
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 146
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_a
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPlaylist(I)I

    move-result v36

    .line 150
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 156
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_b
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 160
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    sget-object v4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    .line 166
    .local v6, "_arg1":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updatePlaylist(ILcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)I

    move-result v36

    .line 167
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 164
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    .end local v36    # "_result":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    goto :goto_3

    .line 173
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    :sswitch_c
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 178
    .local v30, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->deletePlaylist(ILjava/util/List;)I

    move-result v36

    .line 179
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 185
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_d
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 189
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/common/model/SimpleTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 192
    .local v31, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->addPlaylistTracks(ILjava/lang/String;Ljava/util/List;)I

    move-result v36

    .line 193
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 199
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    .end local v36    # "_result":I
    :sswitch_e
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 203
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 204
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPlaylistTracks(ILjava/lang/String;)I

    move-result v36

    .line 205
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 211
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_f
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 215
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 217
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v34

    .line 218
    .local v34, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v6, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->deletePlaylistTracks(ILjava/lang/String;Ljava/util/List;)I

    move-result v36

    .line 219
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 225
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_10
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 230
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->reorderPlaylistTracks(ILjava/lang/String;)I

    move-result v36

    .line 231
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 237
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_11
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 241
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    .line 242
    .local v6, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->startPrefetch(IZ)I

    move-result v36

    .line 243
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 241
    .end local v6    # "_arg1":Z
    .end local v36    # "_result":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 249
    .end local v5    # "_arg0":I
    :sswitch_12
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 253
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getTrackDetail(ILjava/lang/String;)I

    move-result v36

    .line 255
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 261
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_13
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 264
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getMusicCateogoryList(I)I

    move-result v36

    .line 265
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 271
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_14
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getStoreMainPage(I)I

    move-result v36

    .line 275
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 281
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_15
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 285
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 286
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getStoreTopNewUpdate(ILjava/lang/String;)I

    move-result v36

    .line 287
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 293
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_16
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 297
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 299
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 301
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 304
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getStoreDisplayDetailPage(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 305
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 311
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_17
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 315
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 317
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 320
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getTopChartTracks(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 321
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 327
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v36    # "_result":I
    :sswitch_18
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 331
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 332
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAlbumInfo(ILjava/lang/String;)I

    move-result v36

    .line 333
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 339
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_19
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 343
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 345
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 346
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAlbumTracks(ILjava/lang/String;I)I

    move-result v36

    .line 347
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 353
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v36    # "_result":I
    :sswitch_1a
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 357
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 358
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getArtistInfo(ILjava/lang/String;)I

    move-result v36

    .line 359
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 365
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_1b
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 369
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 371
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 373
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getArtistTracks(ILjava/lang/String;ILjava/lang/String;)I

    move-result v36

    .line 375
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 381
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_1c
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 385
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 386
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getArtistAlbums(ILjava/lang/String;)I

    move-result v36

    .line 387
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 393
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_1d
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 397
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 398
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getArtistRelatedArtists(ILjava/lang/String;)I

    move-result v36

    .line 399
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 405
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_1e
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 409
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 410
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getArtistMusicVideos(ILjava/lang/String;)I

    move-result v36

    .line 411
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 417
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_1f
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 421
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 422
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPickList(II)I

    move-result v36

    .line 423
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 429
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v36    # "_result":I
    :sswitch_20
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 433
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPickDetail(ILjava/lang/String;)I

    move-result v36

    .line 435
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 441
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_21
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 445
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 447
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 450
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getCategoryDetailGenreChartsInfo(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 451
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 457
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v36    # "_result":I
    :sswitch_22
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 461
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 463
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 465
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 466
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getCategoryDetailGenreAlbumsInfo(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 467
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 473
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v36    # "_result":I
    :sswitch_23
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 477
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 479
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 481
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 482
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getCategoryDetailGenreArtistsInfo(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 483
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 489
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v36    # "_result":I
    :sswitch_24
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 493
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 495
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 497
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 498
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getCategoryDetailPeriodChartsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 499
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 505
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_25
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 509
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 511
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 513
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 515
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 516
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getCategoryDetailPeriodAlbumsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 517
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 523
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v36    # "_result":I
    :sswitch_26
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 527
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 529
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 531
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 533
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 534
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getCategoryDetailPeriodArtistsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 535
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 541
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v36    # "_result":I
    :sswitch_27
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 545
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 547
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 549
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 551
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 552
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->modSongRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 553
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 559
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v36    # "_result":I
    :sswitch_28
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 563
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 565
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 567
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 569
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 570
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->radioSongRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 571
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 577
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v36    # "_result":I
    :sswitch_29
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 581
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 582
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->advertisementRequest(ILjava/lang/String;)I

    move-result v36

    .line 583
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 589
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_2a
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 593
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 595
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 596
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->audioInterruptRequest(ILjava/lang/String;I)I

    move-result v36

    .line 597
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 603
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v36    # "_result":I
    :sswitch_2b
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 607
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 608
    sget-object v4, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 613
    .local v6, "_arg1":Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPaymentDataSubscription(ILcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)I

    move-result v36

    .line 614
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 611
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    .end local v36    # "_result":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    goto :goto_5

    .line 620
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    :sswitch_2c
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 624
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 626
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    .line 629
    .local v8, "_arg3":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPaymentDataTrack(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v36

    .line 630
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 628
    .end local v8    # "_arg3":Z
    .end local v36    # "_result":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_6

    .line 636
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_2d
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 640
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 642
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 643
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->completeOrder(ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 644
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 650
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_2e
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 654
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 656
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 658
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updateSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 660
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 666
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_2f
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 669
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPurchasedTracks(I)I

    move-result v36

    .line 670
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 676
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_30
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 680
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v6, 0x1

    .line 681
    .local v6, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPurchasedDrmTracks(IZ)I

    move-result v36

    .line 682
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 680
    .end local v6    # "_arg1":Z
    .end local v36    # "_result":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_7

    .line 688
    .end local v5    # "_arg0":I
    :sswitch_31
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 691
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getUser(I)Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v36

    .line 692
    .local v36, "_result":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    if-eqz v36, :cond_7

    .line 694
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/music/common/model/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 700
    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 698
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 704
    .end local v5    # "_arg0":I
    .end local v36    # "_result":Lcom/samsung/android/app/music/common/model/UserInfo;
    :sswitch_32
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 707
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getVoucher(I)I

    move-result v36

    .line 708
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 714
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_33
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 718
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 719
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->registerVoucher(ILjava/lang/String;)I

    move-result v36

    .line 720
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 726
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_34
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 730
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 731
    .local v14, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14, v15}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->redeemVoucher(IJ)I

    move-result v36

    .line 732
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 738
    .end local v5    # "_arg0":I
    .end local v14    # "_arg1":J
    .end local v36    # "_result":I
    :sswitch_35
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 741
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPurchasedSubscriptions(I)I

    move-result v36

    .line 742
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 748
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_36
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 752
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v35

    .line 753
    .local v35, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v6

    .line 755
    .local v6, "_arg1":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v34

    .line 757
    .restart local v34    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v8, 0x1

    .line 758
    .local v8, "_arg3":Z
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v6, v1, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->saveSettings(ILjava/util/Map;Ljava/util/List;Z)I

    move-result v36

    .line 759
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 757
    .end local v8    # "_arg3":Z
    .end local v36    # "_result":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_9

    .line 765
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/Map;
    .end local v34    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "cl":Ljava/lang/ClassLoader;
    :sswitch_37
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 768
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->loadSettings(I)I

    move-result v36

    .line 769
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 775
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_38
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 778
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getDownloadableDeivces(I)I

    move-result v36

    .line 779
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 785
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_39
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 789
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 790
    sget-object v4, Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;

    .line 795
    .local v6, "_arg1":Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->deleteDownloadableDeivces(ILcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;)I

    move-result v36

    .line 796
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 793
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    .end local v36    # "_result":I
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    goto :goto_a

    .line 802
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    :sswitch_3a
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 806
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 807
    sget-object v4, Lcom/samsung/android/app/music/common/model/Station;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/Station;

    .line 812
    .local v6, "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updateBlockedTrack(ILcom/samsung/android/app/music/common/model/Station;)I

    move-result v36

    .line 813
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 810
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    .end local v36    # "_result":I
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    goto :goto_b

    .line 819
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    :sswitch_3b
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 823
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 824
    sget-object v4, Lcom/samsung/android/app/music/common/model/Station;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/Station;

    .line 830
    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 832
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v8, 0x1

    .line 833
    .restart local v8    # "_arg3":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->addFavoriteStation(ILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I

    move-result v36

    .line 834
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 827
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v36    # "_result":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    goto :goto_c

    .line 832
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    goto :goto_d

    .line 840
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_3c
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 844
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 845
    sget-object v4, Lcom/samsung/android/app/music/common/model/Station;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/Station;

    .line 851
    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 853
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v8, 0x1

    .line 854
    .restart local v8    # "_arg3":Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->replaceDeepLinkStation(ILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I

    move-result v36

    .line 855
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 848
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v36    # "_result":I
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    goto :goto_e

    .line 853
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_e
    const/4 v8, 0x0

    goto :goto_f

    .line 861
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Station;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_3d
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 865
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 866
    .restart local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->removeFavoriteStations(ILjava/util/List;)I

    move-result v36

    .line 867
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 873
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_3e
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 877
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 878
    .restart local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updateFavoriteStationOrdinals(ILjava/util/List;)I

    move-result v36

    .line 879
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 885
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_3f
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 888
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAllFavoriteStations(I)I

    move-result v36

    .line 889
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 895
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_40
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 899
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 900
    sget-object v4, Lcom/samsung/android/app/music/common/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/Track;

    .line 906
    .local v6, "_arg1":Lcom/samsung/android/app/music/common/model/Track;
    :goto_10
    sget-object v4, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v32

    .line 908
    .local v32, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v8, 0x1

    .line 909
    .restart local v8    # "_arg3":Z
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->createPersonalStation(ILcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)I

    move-result v36

    .line 910
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 903
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Track;
    .end local v8    # "_arg3":Z
    .end local v32    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    .end local v36    # "_result":I
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Track;
    goto :goto_10

    .line 908
    .restart local v32    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_10
    const/4 v8, 0x0

    goto :goto_11

    .line 916
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/samsung/android/app/music/common/model/Track;
    .end local v32    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :sswitch_41
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 920
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 921
    .restart local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->removePersonalStation(ILjava/util/List;)I

    move-result v36

    .line 922
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 928
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_42
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 932
    .restart local v5    # "_arg0":I
    sget-object v4, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v29

    .line 933
    .local v29, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updatePersonalStations(ILjava/util/List;)I

    move-result v36

    .line 934
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 940
    .end local v5    # "_arg0":I
    .end local v29    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    .end local v36    # "_result":I
    :sswitch_43
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 944
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 945
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getStationInfo(ILjava/lang/String;)I

    move-result v36

    .line 946
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 952
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_44
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 956
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 957
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPersonalStation(ILjava/lang/String;)I

    move-result v36

    .line 958
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 964
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_45
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 967
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAllPersonalStations(I)I

    move-result v36

    .line 968
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 974
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_46
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 977
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getProperStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 978
    .local v36, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 984
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":Ljava/lang/String;
    :sswitch_47
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 987
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->createSmartStation(I)I

    move-result v36

    .line 988
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 994
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_48
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 998
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1000
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1002
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/4 v8, 0x1

    .line 1003
    .restart local v8    # "_arg3":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->addSmartStationToMyStation(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v36

    .line 1004
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1002
    .end local v8    # "_arg3":Z
    .end local v36    # "_result":I
    :cond_11
    const/4 v8, 0x0

    goto :goto_12

    .line 1010
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_49
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1013
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->addToDBAfterGetCreatedSmartStation(I)I

    move-result v36

    .line 1014
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1020
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_4a
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    sget-object v4, Lcom/samsung/android/app/music/common/model/SimpleTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 1023
    .local v25, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->addMilkTrackList(Ljava/util/List;)[J

    move-result-object v36

    .line 1024
    .local v36, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1026
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v25    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    .end local v36    # "_result":[J
    :sswitch_4b
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 1033
    .local v26, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->setVideoAdPlayTime(J)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1039
    .end local v26    # "_arg0":J
    :sswitch_4c
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->shouldPlayVideoAd()Z

    move-result v36

    .line 1041
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    if-eqz v36, :cond_12

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1042
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .line 1047
    .end local v36    # "_result":Z
    :sswitch_4d
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->isDormancyMode()Z

    move-result v36

    .line 1049
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    if-eqz v36, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1050
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 1055
    .end local v36    # "_result":Z
    :sswitch_4e
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/4 v5, 0x1

    .line 1058
    .local v5, "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->setDormancyMode(Z)Z

    move-result v36

    .line 1059
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    if-eqz v36, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1057
    .end local v5    # "_arg0":Z
    .end local v36    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .line 1060
    .restart local v5    # "_arg0":Z
    .restart local v36    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 1065
    .end local v5    # "_arg0":Z
    .end local v36    # "_result":Z
    :sswitch_4f
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->isVideoAdOn()Z

    move-result v36

    .line 1067
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    if-eqz v36, :cond_16

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1068
    :cond_16
    const/4 v4, 0x0

    goto :goto_17

    .line 1073
    .end local v36    # "_result":Z
    :sswitch_50
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    const/4 v5, 0x1

    .line 1076
    .restart local v5    # "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->setVideoAdOn(Z)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1075
    .end local v5    # "_arg0":Z
    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    .line 1082
    :sswitch_51
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getVideoCp()I

    move-result v36

    .line 1084
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1090
    .end local v36    # "_result":I
    :sswitch_52
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->isClickedToggleButton()Z

    move-result v36

    .line 1092
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    if-eqz v36, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1093
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 1098
    .end local v36    # "_result":Z
    :sswitch_53
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/4 v5, 0x1

    .line 1101
    .restart local v5    # "_arg0":Z
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->setClickedToggleButton(Z)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1100
    .end local v5    # "_arg0":Z
    :cond_19
    const/4 v5, 0x0

    goto :goto_1a

    .line 1107
    :sswitch_54
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1111
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1112
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->verifyTracks(ILjava/lang/String;)I

    move-result v36

    .line 1113
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1119
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_55
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1123
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1125
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1126
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->subscriptionDeduction(ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1127
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1133
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_56
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1136
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->checkPayPromotion(I)I

    move-result v36

    .line 1137
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1143
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_57
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1147
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1149
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1151
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1152
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->checkDRMLicense(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1153
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1159
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_58
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1163
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1165
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1166
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->drmLicenseComplete(ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1167
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1173
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_59
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1176
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getEventWeb(I)I

    move-result v36

    .line 1177
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1183
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_5a
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1186
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getEventPopup(I)I

    move-result v36

    .line 1187
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1193
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_5b
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 1196
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 1201
    .local v5, "_arg0":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->updateDoNotShowTime(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V

    .line 1202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1199
    .end local v5    # "_arg0":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    goto :goto_1b

    .line 1207
    .end local v5    # "_arg0":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    :sswitch_5c
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1210
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->deleteExpiredPopups(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_5d
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1219
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getSearchPresets(I)I

    move-result v36

    .line 1220
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1226
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_5e
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1230
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1231
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getSearchAutoCompletes(ILjava/lang/String;)I

    move-result v36

    .line 1232
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1238
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_5f
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1242
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1244
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1246
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1248
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1250
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v10, 0x1

    .line 1252
    .local v10, "_arg5":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v11, 0x1

    .local v11, "_arg6":Z
    :goto_1d
    move-object/from16 v4, p0

    .line 1253
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getSearchResults(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v36

    .line 1254
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1250
    .end local v10    # "_arg5":Z
    .end local v11    # "_arg6":Z
    .end local v36    # "_result":I
    :cond_1b
    const/4 v10, 0x0

    goto :goto_1c

    .line 1252
    .restart local v10    # "_arg5":Z
    :cond_1c
    const/4 v11, 0x0

    goto :goto_1d

    .line 1260
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Z
    :sswitch_60
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1264
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1266
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1267
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->seedSearchAutoCompletes(ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1268
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1274
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_61
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1278
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1280
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1281
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->seedSearch(ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1282
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1288
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_62
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1292
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1293
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getOnDeviceRecommendSearchKeywords(ILjava/lang/String;)I

    move-result v36

    .line 1294
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1300
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_63
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1304
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 1305
    .restart local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getLyrics(ILjava/util/List;)I

    move-result v36

    .line 1306
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1312
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_64
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1316
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1317
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getRecommendRadios(ILjava/lang/String;)I

    move-result v36

    .line 1318
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1324
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_65
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1328
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1330
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 1332
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 1333
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    .local v8, "_arg3":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    :goto_1e
    move-object/from16 v12, p0

    move v13, v5

    move-object/from16 v18, v8

    .line 1338
    invoke-virtual/range {v12 .. v18}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->adjustmentMusicVideo(IJJLcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;)I

    move-result v36

    .line 1339
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1336
    .end local v8    # "_arg3":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    .end local v36    # "_result":I
    :cond_1d
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    goto :goto_1e

    .line 1345
    .end local v5    # "_arg0":I
    .end local v8    # "_arg3":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    :sswitch_66
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1349
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 1350
    .restart local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getMusicVideoPlay(ILjava/util/List;)I

    move-result v36

    .line 1351
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1357
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_67
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getServerTime()J

    move-result-wide v36

    .line 1359
    .local v36, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    move-object/from16 v0, p3

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1361
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1365
    .end local v36    # "_result":J
    :sswitch_68
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1369
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1371
    .restart local v6    # "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    .line 1373
    .local v21, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1375
    .local v22, "_arg3":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1377
    .local v23, "_arg4":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .local v24, "_arg5":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    move-object/from16 v18, p0

    move/from16 v19, v5

    move-object/from16 v20, v6

    .line 1378
    invoke-virtual/range {v18 .. v24}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->addFavorite(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v36

    .line 1379
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1385
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    .end local v22    # "_arg3":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    .end local v24    # "_arg5":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    .end local v36    # "_result":I
    :sswitch_69
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1389
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1391
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v34

    .line 1392
    .restart local v34    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v6, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->deleteFavorite(ILjava/lang/String;Ljava/util/List;)I

    move-result v36

    .line 1393
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1399
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_result":I
    :sswitch_6a
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1403
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1405
    .restart local v6    # "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v33

    .line 1406
    .local v33, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v6, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->deleteFavoriteTrackList(ILjava/lang/String;Ljava/util/List;)I

    move-result v36

    .line 1407
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1409
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1413
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    .end local v36    # "_result":I
    :sswitch_6b
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1417
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1418
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getFavorite(ILjava/lang/String;)I

    move-result v36

    .line 1419
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1425
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_6c
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1429
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1431
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1432
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->checkFavorite(ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1433
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1435
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1439
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_6d
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1443
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1445
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1447
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1448
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->requestLyric(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v36

    .line 1449
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1455
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v36    # "_result":I
    :sswitch_6e
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1458
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getRadioHistory(I)I

    move-result v36

    .line 1459
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1465
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_6f
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1469
    .restart local v5    # "_arg0":I
    sget-object v4, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v28

    .line 1470
    .local v28, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->deleteRadioHistory(ILjava/util/List;)I

    move-result v36

    .line 1471
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1477
    .end local v5    # "_arg0":I
    .end local v28    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    .end local v36    # "_result":I
    :sswitch_70
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1480
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getRadioPlayLimitInfo(I)I

    move-result v36

    .line 1481
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1487
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_71
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1490
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getTrackPlayDevicePermission(I)I

    move-result v36

    .line 1491
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1497
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_72
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1500
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getNoticeList(I)I

    move-result v36

    .line 1501
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1507
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_73
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1510
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->sendErrorLog(I)I

    move-result v36

    .line 1511
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1517
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_74
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1521
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1522
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getRecommendStationinfo(ILjava/lang/String;)I

    move-result v36

    .line 1523
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1529
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_75
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1533
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1534
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getBixbyRuleStations(ILjava/lang/String;)I

    move-result v36

    .line 1535
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1536
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1541
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_76
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1544
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->checkSubscriptionUser(I)I

    move-result v36

    .line 1545
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1551
    .end local v5    # "_arg0":I
    .end local v36    # "_result":I
    :sswitch_77
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1555
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1557
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1558
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getAlbumImageUrls(ILjava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1559
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1565
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_78
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1568
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->drmLicenseExpiredTest(I)Z

    move-result v36

    .line 1569
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    if-eqz v36, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1570
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 1575
    .end local v5    # "_arg0":I
    .end local v36    # "_result":Z
    :sswitch_79
    const-string v4, "com.samsung.android.app.music.service.milk.IMilkService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->isNetworkTransportInitialized()Z

    move-result v36

    .line 1577
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    if-eqz v36, :cond_1f

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1578
    :cond_1f
    const/4 v4, 0x0

    goto :goto_20

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
