.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$1;,
        Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$NfcUnlockHandler;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;,
        Landroid/nfc/NfcAdapter$OnTagRemovedListener;,
        Landroid/nfc/NfcAdapter$ReaderCallback;,
        Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;,
        Landroid/nfc/NfcAdapter$SemRfPresetResultListener;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_RW_P2P_STATE_CHANGED:Ljava/lang/String; = "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_ADAPTER_STATE_CHANGE_READER:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

.field public static final ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_DONE"

.field public static final ACTION_HANDOVER_TRANSFER_STARTED:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_STARTED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final DUALSWP_PREFERRED_SIM_SLOT_1:I = 0x0

.field public static final DUALSWP_PREFERRED_SIM_SLOT_2:I = 0x1

.field public static final DUALSWP_PREFERRED_SIM_SLOT_INVALID:I = -0x1

.field public static final EXTRA_ADAPTER_RW_P2P_STATE:Ljava/lang/String; = "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_STATUS"

.field public static final EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_URI"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_READER_PRESENCE_CHECK_DELAY:Ljava/lang/String; = "presence"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final FLAG_NDEF_PUSH_NO_CONFIRM:I = 0x1

.field public static final FLAG_READER_NFC_A:I = 0x1

.field public static final FLAG_READER_NFC_B:I = 0x2

.field public static final FLAG_READER_NFC_BARCODE:I = 0x10

.field public static final FLAG_READER_NFC_F:I = 0x4

.field public static final FLAG_READER_NFC_V:I = 0x8

.field public static final FLAG_READER_NO_PLATFORM_SOUNDS:I = 0x100

.field public static final FLAG_READER_SKIP_NDEF_CHECK:I = 0x80

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field public static final NFC_NOT_SUPPORT_LED_COVER:I = 0x0

.field public static final NFC_SUPPORT_LED_COVER:I = 0x1

.field public static final SEM_FLAG_DISCOVERY_TECHNOLOGY_DISABLE:I = 0x0

.field public static final SEM_FLAG_DISCOVERY_TECHNOLOGY_KEEP_CURRENT:I = -0x1

.field public static final SEM_RF_PRESET_DEFAULT:I = 0x1

.field public static final SEM_RF_PRESET_PAYMENT:I = 0x2

.field public static final SEM_STATE_CARD_MODE_ON:I = 0x5

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_RW_P2P_OFF:I = 0xb

.field public static final STATE_RW_P2P_ON:I = 0xd

.field public static final STATE_RW_P2P_TURNING_OFF:I = 0xe

.field public static final STATE_RW_P2P_TURNING_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "NFC"

.field public static final TECHNOLOGY_MASK_A:I = 0x1

.field public static final TECHNOLOGY_MASK_B:I = 0x2

.field public static final TECHNOLOGY_MASK_F:I = 0x4

.field static sCardEmulationService:Landroid/nfc/INfcCardEmulation;

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

.field static sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static sService:Landroid/nfc/INfcAdapter;

.field static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDevSettingCr:Landroid/database/Cursor;

.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field mFunctionCompleteListener:Landroid/nfc/IAsyncFunctionCompleteCallback;

.field final mLock:Ljava/lang/Object;

.field final mNfcActivityManager:Landroid/nfc/NfcActivityManager;

.field mNfcFunctionCompleteListener:Landroid/nfc/INfcAsyncFunctionCompleteCallback;

.field final mNfcUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/nfc/NfcAdapter$NfcUnlockHandler;",
            "Landroid/nfc/INfcUnlockHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRestrictionCr:Landroid/database/Cursor;

.field mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object v1, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1560
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 753
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 754
    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    .line 756
    iput-object v1, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    .line 757
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    .line 761
    if-eqz p1, :cond_0

    .line 762
    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 752
    :cond_0
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 746
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    .line 747
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 746
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 705
    if-nez p0, :cond_0

    .line 706
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 709
    if-nez p0, :cond_1

    .line 710
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 711
    const-string/jumbo v2, "context not associated with any application (using a mock context?)"

    .line 710
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 714
    :cond_1
    const-string/jumbo v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 715
    .local v0, "manager":Landroid/nfc/NfcManager;
    if-nez v0, :cond_2

    .line 717
    return-object v2

    .line 726
    :cond_2
    invoke-virtual {v0, p0}, Landroid/nfc/NfcManager;->bindNfcService(Landroid/content/Context;)V

    .line 729
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v3, Landroid/nfc/NfcAdapter;

    monitor-enter v3

    .line 632
    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v2, :cond_2

    .line 634
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    const-string/jumbo v2, "NFC"

    const-string/jumbo v4, "this device does not have NFC support"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 639
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 640
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_1

    .line 641
    const-string/jumbo v2, "NFC"

    const-string/jumbo v4, "could not retrieve NFC service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    :cond_1
    :try_start_2
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    :try_start_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    :try_start_4
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 665
    const/4 v2, 0x1

    :try_start_5
    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 667
    :cond_2
    if-nez p0, :cond_4

    .line 668
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_3

    .line 669
    new-instance v2, Landroid/nfc/NfcAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 671
    :cond_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v3

    return-object v2

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v2, "NFC"

    const-string/jumbo v4, "could not retrieve NFC Tag service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 653
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 654
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v4, "could not retrieve card emulation service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 660
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 661
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v4, "could not retrieve NFC-F card emulation service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 673
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAdapter;

    .line 674
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_5

    .line 675
    new-instance v0, Landroid/nfc/NfcAdapter;

    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    .line 676
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    monitor-exit v3

    .line 678
    return-object v0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 684
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 685
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 686
    return-object v2

    .line 688
    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private static hasNfcFeature()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 613
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 614
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 615
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return v4

    .line 619
    :cond_0
    :try_start_0
    const-string/jumbo v2, "android.hardware.nfc"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "Package manager query failed, assuming no NFC feature"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    return v4
.end method

.method private isAndroidBeamAllowed(Z)Z
    .locals 10
    .param p1, "showMsg"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2125
    :try_start_0
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "isAndroidBeamAllowed - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2127
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 2128
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v0, "NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMsg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2130
    const-string/jumbo v3, "isAndroidBeamAllowed"

    .line 2129
    const/4 v2, 0x0

    .line 2130
    const/4 v5, 0x0

    .line 2129
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    .line 2131
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 2132
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2134
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    const-string/jumbo v2, "isAndroidBeamAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "AndroidBeam is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2141
    :try_start_2
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2136
    return v8

    .line 2141
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2150
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    return v9

    .line 2138
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2139
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2141
    :try_start_4
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2146
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 2147
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "Failed to talk to Restriction Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2140
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 2141
    :try_start_5
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2140
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2144
    :cond_1
    return v9
.end method

.method private isNFCEnabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2156
    :try_start_0
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "isNFCEnabled - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2158
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2159
    const-string/jumbo v3, "isNFCEnabledWithMsg"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "true"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 2158
    const/4 v2, 0x0

    .line 2159
    const/4 v5, 0x0

    .line 2158
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    .line 2160
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 2161
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2163
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    const-string/jumbo v2, "isNFCEnabledWithMsg"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2169
    :try_start_2
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2164
    return v9

    .line 2169
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2178
    :goto_0
    return v8

    .line 2166
    :catch_0
    move-exception v6

    .line 2167
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2169
    :try_start_4
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2174
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 2175
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "Failed to talk to Restriction Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2168
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2169
    :try_start_5
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2168
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2172
    :cond_1
    return v8
.end method

.method private isNFCStateChangeAllowed()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2184
    :try_start_0
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "isNFCStateChangeAllowed - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2186
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2187
    const-string/jumbo v3, "isNFCStateChangeAllowed"

    .line 2186
    const/4 v2, 0x0

    .line 2187
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2186
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    .line 2188
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 2189
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2191
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    const-string/jumbo v2, "isNFCStateChangeAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    :try_start_2
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2192
    return v8

    .line 2197
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2201
    :cond_1
    :goto_0
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2202
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2203
    const-string/jumbo v3, "isSettingsChangesAllowed"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "true"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 2202
    const/4 v2, 0x0

    .line 2203
    const/4 v5, 0x0

    .line 2202
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    .line 2204
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 2205
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2207
    :try_start_3
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    const-string/jumbo v2, "isSettingsChangesAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 2213
    :try_start_4
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2208
    return v8

    .line 2194
    :catch_0
    move-exception v6

    .line 2195
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_5
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2197
    :try_start_6
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 2219
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 2220
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "Failed to talk to Misc Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return v9

    .line 2196
    :catchall_0
    move-exception v0

    .line 2197
    :try_start_7
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2196
    throw v0

    .line 2213
    :cond_2
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 2210
    :catch_2
    move-exception v6

    .line 2211
    .restart local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_8
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2213
    :try_start_9
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2212
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_1
    move-exception v0

    .line 2213
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2212
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 2216
    :cond_3
    return v9
.end method


# virtual methods
.method public addAsyncFunctionListener(Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;)V
    .locals 4
    .param p1, "completeListener"    # Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;

    .prologue
    const/4 v2, 0x0

    .line 1697
    const/4 v1, 0x0

    .line 1698
    .local v1, "iListener":Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;
    if-eqz p1, :cond_0

    .line 1699
    new-instance v1, Landroid/nfc/NfcAdapter$2;

    .end local v1    # "iListener":Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;
    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;)V

    .line 1711
    :goto_0
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2, v1}, Landroid/nfc/INfcAdapter;->addNfcAsyncFunctionCallback(Landroid/nfc/INfcAsyncFunctionCompleteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    :goto_1
    return-void

    .line 1707
    .restart local v1    # "iListener":Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;
    :cond_0
    iput-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcFunctionCompleteListener:Landroid/nfc/INfcAsyncFunctionCompleteCallback;

    goto :goto_0

    .line 1712
    .end local v1    # "iListener":Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;
    :catch_0
    move-exception v0

    .line 1713
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .param p2, "tagTechnologies"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2263
    array-length v3, p2

    if-nez v3, :cond_0

    .line 2264
    return v6

    .line 2268
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2269
    :try_start_1
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2271
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v5, v3}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 2272
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    :cond_1
    new-instance v2, Landroid/nfc/NfcAdapter$5;

    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$5;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    .line 2282
    .local v2, "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 2283
    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    move-result-object v5

    .line 2282
    invoke-interface {v3, v2, v5}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 2284
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    .line 2294
    const/4 v3, 0x1

    return v3

    .line 2268
    .end local v2    # "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2286
    :catch_0
    move-exception v0

    .line 2287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2288
    return v6

    .line 2289
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2290
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Unable to register LockscreenDispatch"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2291
    return v6
.end method

.method public apcCommand(I[B)[B
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2539
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->apcCommand(I[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2542
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail apcCommand"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 815
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead - attempting to recover"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 817
    .local v1, "service":Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    .line 818
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void

    .line 825
    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 827
    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 847
    :goto_1
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 837
    .end local v0    # "ee":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 838
    .restart local v0    # "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC card emulation service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 843
    .end local v0    # "ee":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 844
    .restart local v0    # "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC-F card emulation service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public changeRouting(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1685
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : changeRouting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/NfcActivityManager;->changeRouting(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1684
    return-void
.end method

.method public disable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 976
    :try_start_0
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "EDM : nfc policy disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return v3

    .line 982
    :cond_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 985
    return v3
.end method

.method public disable(Z)Z
    .locals 2
    .param p1, "persist"    # Z

    .prologue
    .line 996
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 999
    const/4 v1, 0x0

    return v1
.end method

.method public disableFilterCondition(B)Z
    .locals 2
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 2113
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->disableFilterCondition(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2114
    :catch_0
    move-exception v0

    .line 2115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2116
    const/4 v1, 0x0

    return v1
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1555
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 1555
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 1554
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "force"    # Z

    .prologue
    .line 1569
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 1570
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "You must disable foreground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1896
    if-nez p1, :cond_0

    .line 1897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1899
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1900
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1901
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1902
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1895
    return-void
.end method

.method public disableListenMode(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1644
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : disableListenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->unsetDiscoveryTech(Landroid/app/Activity;)V

    .line 1643
    return-void
.end method

.method public disableNdefPush()Z
    .locals 2

    .prologue
    .line 1935
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1938
    const/4 v1, 0x0

    return v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1772
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    .line 1771
    return-void
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 2058
    if-nez p1, :cond_0

    .line 2059
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "tag cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2062
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    :goto_0
    return-void

    .line 2063
    :catch_0
    move-exception v0

    .line 2064
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 940
    :try_start_0
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isNFCEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v1

    return v1

    .line 941
    :cond_0
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "EDM : nfc policy disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    return v3

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 949
    return v3
.end method

.method public enableDisableSeTestMode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "SE"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2482
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->enableDisableSeTestMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    return-void

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to change default routing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2485
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to change default routing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableFilterCondition(B)Z
    .locals 2
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 2100
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->enableFilterCondition(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2101
    :catch_0
    move-exception v0

    .line 2102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2103
    const/4 v1, 0x0

    return v1
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "filters"    # [Landroid/content/IntentFilter;
    .param p4, "techLists"    # [[Ljava/lang/String;

    .prologue
    .line 1511
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1512
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->isNFCAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1520
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1521
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1513
    :cond_2
    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "enableForegroundDispatch is disabled due to Knox restriction"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    return-void

    .line 1523
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1524
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Foreground dispatch can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1528
    :cond_4
    const/4 v1, 0x0

    .line 1529
    .local v1, "parcel":Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_5

    :try_start_0
    array-length v3, p4

    if-lez v3, :cond_5

    .line 1530
    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    .local v2, "parcel":Landroid/nfc/TechListParcel;
    move-object v1, v2

    .line 1532
    .end local v1    # "parcel":Landroid/nfc/TechListParcel;
    .end local v2    # "parcel":Landroid/nfc/TechListParcel;
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    .line 1533
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 1532
    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1534
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1859
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isNFCAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1868
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1869
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1861
    :cond_2
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, " enableForegroundNdefPush is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return-void

    .line 1871
    :cond_3
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1872
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1856
    return-void
.end method

.method public enableListenMode(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "flags"    # I

    .prologue
    .line 1623
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : enableListenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isNFCAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1635
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/nfc/NfcActivityManager;->setDiscoveryTech(Landroid/app/Activity;II)V

    .line 1622
    return-void

    .line 1628
    :cond_1
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, " enable reader mode is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return-void
.end method

.method public enableNdefPush()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1914
    invoke-direct {p0, v2}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1915
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    return v1

    .line 1920
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1923
    return v2
.end method

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1604
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isNFCAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1613
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 1601
    return-void

    .line 1606
    :cond_1
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, " enable reader mode is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return-void
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2462
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2463
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2461
    :cond_0
    return-void
.end method

.method public getAdapterRwP2pState()I
    .locals 2

    .prologue
    .line 2333
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getRwP2pState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2336
    const/16 v1, 0xb

    return v1
.end method

.method public getAdapterState()I
    .locals 2

    .prologue
    .line 912
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 915
    const/4 v1, 0x1

    return v1
.end method

.method public getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .prologue
    .line 797
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 798
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoverVersion()I
    .locals 2

    .prologue
    .line 2690
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getCoverVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2691
    :catch_0
    move-exception v0

    .line 2692
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getDefaultRoutingDestination()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2509
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getDefaultRoutingDestination()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2510
    .local v1, "se":Ljava/lang/String;
    return-object v1

    .line 2511
    .end local v1    # "se":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2512
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "Fail to change default routing"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2513
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Fail to change default routing"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIdm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2705
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getIdm()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2706
    :catch_0
    move-exception v0

    .line 2707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2708
    const/4 v1, 0x0

    return-object v1
.end method

.method public getListenMode()I
    .locals 3

    .prologue
    .line 2405
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getListenMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2406
    :catch_0
    move-exception v0

    .line 2407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2408
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to get Listen mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2409
    const/4 v1, -0x1

    return v1
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2449
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2450
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2454
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2455
    :catch_0
    move-exception v0

    .line 2456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2457
    return-object v3
.end method

.method public getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 807
    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    return-object v0
.end method

.method public getPreferredSimSlot()I
    .locals 2

    .prologue
    .line 2612
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getPreferredSimSlot()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2613
    :catch_0
    move-exception v0

    .line 2614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2615
    const/4 v1, -0x1

    return v1
.end method

.method getSdkVersion()I
    .locals 1

    .prologue
    .line 2468
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2469
    const/16 v0, 0x9

    return v0

    .line 2471
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public getSeSupportedTech()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2671
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getSeSupportedTech()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2672
    :catch_0
    move-exception v0

    .line 2673
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Failed to get Tech information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2675
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to get Tech information"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 780
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 789
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
    .locals 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "debounceMs"    # I
    .param p3, "tagRemovedListener"    # Landroid/nfc/NfcAdapter$OnTagRemovedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2019
    const/4 v1, 0x0

    .line 2020
    .local v1, "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    if-eqz p3, :cond_0

    .line 2021
    new-instance v1, Landroid/nfc/NfcAdapter$4;

    .end local v1    # "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    invoke-direct {v1, p0, p4, p3}, Landroid/nfc/NfcAdapter$4;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    .line 2040
    :cond_0
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2041
    :try_start_0
    iput-object v1, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2044
    :try_start_1
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3, p2, v1}, Landroid/nfc/INfcAdapter;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    return v2

    .line 2040
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2045
    :catch_0
    move-exception v0

    .line 2046
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public invokeBeam(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1800
    if-nez p1, :cond_0

    .line 1801
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "activity may not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1803
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1805
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->invokeBeam()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    const/4 v1, 0x1

    return v1

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "invokeBeam: NFC process has died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1810
    const/4 v1, 0x0

    return v1
.end method

.method public invokeBeam(Landroid/nfc/BeamShareData;)Z
    .locals 3
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 1819
    :try_start_0
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "invokeBeamInternal()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    const/4 v1, 0x1

    return v1

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "invokeBeam: NFC process has died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1825
    const/4 v1, 0x0

    return v1
.end method

.method public isAllEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2582
    :try_start_0
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 2583
    :catch_0
    move-exception v0

    .line 2584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2585
    return v2
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 873
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 877
    return v1
.end method

.method public isNdefPushEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1968
    invoke-direct {p0, v2}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1969
    return v2

    .line 1974
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1975
    :catch_0
    move-exception v0

    .line 1976
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1977
    return v2
.end method

.method public isSimLocked()Z
    .locals 3

    .prologue
    .line 2422
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isSimLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2423
    :catch_0
    move-exception v0

    .line 2424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2425
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to isSimLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2426
    const/4 v1, 0x1

    return v1
.end method

.method public isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "SEName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2233
    const/4 v0, 0x0

    .line 2235
    .local v0, "bTrusted":Z
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2, p1, p2}, Landroid/nfc/INfcAdapter;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2240
    .end local v0    # "bTrusted":Z
    :goto_0
    return v0

    .line 2236
    .restart local v0    # "bTrusted":Z
    :catch_0
    move-exception v1

    .line 2237
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isUnlocked()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 890
    :try_start_0
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 893
    return v2
.end method

.method public loadBanner(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2771
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->loadBanner(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2772
    :catch_0
    move-exception v0

    .line 2773
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2774
    const/4 v1, 0x0

    return-object v1
.end method

.method public networkReset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2758
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->NetworkResetAtt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2756
    return-void

    .line 2759
    :catch_0
    move-exception v0

    .line 2760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2761
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to networkReset"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2762
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to networkReset"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public pausePolling(I)V
    .locals 2
    .param p1, "timeoutInMs"    # I

    .prologue
    .line 1010
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->pausePolling(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :goto_0
    return-void

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public prepareSwitchedOffState()V
    .locals 2

    .prologue
    .line 2377
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->prepareSwitchedOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2375
    :goto_0
    return-void

    .line 2378
    :catch_0
    move-exception v0

    .line 2379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public readEdc()I
    .locals 2

    .prologue
    .line 2718
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->readEdc()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2719
    :catch_0
    move-exception v0

    .line 2720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2721
    const/4 v1, -0x1

    return v1
.end method

.method public readerDisable()Z
    .locals 2

    .prologue
    .line 2554
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->readerDisable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2555
    :catch_0
    move-exception v0

    .line 2556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2557
    const/4 v1, 0x0

    return v1
.end method

.method public readerEnable()Z
    .locals 2

    .prologue
    .line 2568
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->readerEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2569
    :catch_0
    move-exception v0

    .line 2570
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2571
    const/4 v1, 0x0

    return v1
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z
    .locals 4
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    .prologue
    .line 2306
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2307
    :try_start_1
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2308
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v3, v1}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    :cond_0
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v2

    return v1

    .line 2306
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2315
    const/4 v1, 0x0

    return v1
.end method

.method public resumePolling()V
    .locals 2

    .prologue
    .line 1024
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->resumePolling()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public rfUpdateImage([B)V
    .locals 3
    .param p1, "img"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2525
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->rfUpdateImage([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    return-void

    .line 2526
    :catch_0
    move-exception v0

    .line 2527
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to update rf image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2528
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2529
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to update rf image"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public semChangeRouting(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2919
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : changeRouting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/NfcActivityManager;->changeRouting(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2918
    return-void
.end method

.method public semDisable()Z
    .locals 1

    .prologue
    .line 2821
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public semEnable()Z
    .locals 1

    .prologue
    .line 2800
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public semGetAdapterState()I
    .locals 1

    .prologue
    .line 2836
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    return v0
.end method

.method public semGetSecureElementSupportedTechnology()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2949
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getSeSupportedTech()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2950
    :catch_0
    move-exception v0

    .line 2951
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Failed to get Tech information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2953
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to get Tech information"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public semSetDiscoveryTechnology(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    .line 2873
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : setDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2877
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isNFCAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2885
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/nfc/NfcActivityManager;->setDiscoveryTech(Landroid/app/Activity;II)V

    .line 2872
    return-void

    .line 2878
    :cond_1
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "setDiscoveryTech is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    return-void
.end method

.method public semSetLedCoverRfDetectedCallback(Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;

    .prologue
    .line 3052
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->setLedCoverRfDetectedCallback(Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;)V

    .line 3051
    return-void
.end method

.method public semSetRfPreset(Landroid/app/Activity;ILandroid/nfc/NfcAdapter$SemRfPresetResultListener;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rfPreset"    # I
    .param p3, "resultListener"    # Landroid/nfc/NfcAdapter$SemRfPresetResultListener;

    .prologue
    const/4 v2, 0x0

    .line 1741
    const/4 v1, 0x0

    .line 1742
    .local v1, "iListener":Landroid/nfc/IAsyncFunctionCompleteCallback$Stub;
    if-eqz p3, :cond_0

    .line 1743
    new-instance v1, Landroid/nfc/NfcAdapter$3;

    .end local v1    # "iListener":Landroid/nfc/IAsyncFunctionCompleteCallback$Stub;
    invoke-direct {v1, p0, p3}, Landroid/nfc/NfcAdapter$3;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$SemRfPresetResultListener;)V

    .line 1755
    :goto_0
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2, v1}, Landroid/nfc/INfcAdapter;->addAsyncFunctionCallback(Landroid/nfc/IAsyncFunctionCompleteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    :goto_1
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v2, p1, p2}, Landroid/nfc/NfcActivityManager;->updateRfFile(Landroid/app/Activity;I)V

    .line 1739
    return-void

    .line 1751
    .restart local v1    # "iListener":Landroid/nfc/IAsyncFunctionCompleteCallback$Stub;
    :cond_0
    iput-object v2, p0, Landroid/nfc/NfcAdapter;->mFunctionCompleteListener:Landroid/nfc/IAsyncFunctionCompleteCallback;

    goto :goto_0

    .line 1756
    .end local v1    # "iListener":Landroid/nfc/IAsyncFunctionCompleteCallback$Stub;
    :catch_0
    move-exception v0

    .line 1757
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public semSetWirelessChargeEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3023
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->SetWirelessChargeEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3024
    :catch_0
    move-exception v0

    .line 3025
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public semStartLedCoverMode()[B
    .locals 4

    .prologue
    .line 2969
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->StartLedCover()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2970
    :catch_0
    move-exception v1

    .line 2971
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2972
    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 2973
    .local v0, "bytes":[B
    return-object v0
.end method

.method public semStopLedCoverMode()Z
    .locals 2

    .prologue
    .line 3004
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->StopLedCover()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3005
    :catch_0
    move-exception v0

    .line 3006
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3007
    const/4 v1, 0x0

    return v1
.end method

.method public semTransceiveDataWithLedCover([B)[B
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 2987
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2, p1}, Landroid/nfc/INfcAdapter;->TransceiveLedCover([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2988
    :catch_0
    move-exception v1

    .line 2989
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2990
    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 2991
    .local v0, "bytes":[B
    return-object v0
.end method

.method public semUnsetDiscoveryTechnology(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2895
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : unsetDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->unsetDiscoveryTech(Landroid/app/Activity;)V

    .line 2894
    return-void
.end method

.method public setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 1093
    invoke-direct {p0, v2}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1094
    return-void

    .line 1098
    :cond_0
    if-nez p2, :cond_1

    .line 1099
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1101
    :cond_1
    if-eqz p1, :cond_5

    .line 1102
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, p1, v2

    .line 1103
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Uri not allowed to be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1105
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string/jumbo v4, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1107
    const-string/jumbo v4, "content"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1102
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI needs to have either scheme file or scheme content"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1113
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_5
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v2, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 1090
    return-void
.end method

.method public setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    return-void

    .line 1181
    :cond_0
    if-nez p2, :cond_1

    .line 1182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    .line 1173
    return-void
.end method

.method public setDefaultRoutingDestination(Ljava/lang/String;)V
    .locals 3
    .param p1, "SE"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2496
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    return-void

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to change default routing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2499
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to change default routing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDiscoveryTech(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    .line 1654
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : setDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isNFCAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/nfc/NfcActivityManager;->setDiscoveryTech(Landroid/app/Activity;II)V

    .line 1653
    return-void

    .line 1659
    :cond_1
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "setDiscoveryTech is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    return-void
.end method

.method public setFilterList([B)Z
    .locals 2
    .param p1, "filterList"    # [B

    .prologue
    .line 2087
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setFilterList([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2090
    const/4 v1, 0x0

    return v1
.end method

.method public setListenMode(I)I
    .locals 3
    .param p1, "technology"    # I

    .prologue
    .line 2391
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setListenMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2392
    :catch_0
    move-exception v0

    .line 2393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2394
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to set Listen mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2395
    const/4 v1, -0x1

    return v1
.end method

.method public setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 1296
    if-nez p2, :cond_0

    .line 1297
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1295
    return-void
.end method

.method public varargs setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 1262
    invoke-direct {p0, v3}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1263
    return-void

    .line 1267
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v2

    .line 1269
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_2

    .line 1270
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activity cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    .line 1282
    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    return-void

    .line 1272
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1273
    array-length v4, p3

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p3, v3

    .line 1274
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 1275
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activities cannot contain null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1277
    :cond_3
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1286
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    throw v1
.end method

.method public setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 1405
    if-nez p2, :cond_0

    .line 1406
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1408
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1404
    return-void
.end method

.method public varargs setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 1371
    invoke-direct {p0, v3}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1372
    return-void

    .line 1376
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v2

    .line 1378
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_2

    .line 1379
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activity cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :catch_0
    move-exception v1

    .line 1389
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    .line 1391
    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1368
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    return-void

    .line 1381
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1382
    array-length v4, p3

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p3, v3

    .line 1383
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 1384
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activities cannot contain null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1386
    :cond_3
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1382
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1395
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    throw v1
.end method

.method public varargs setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    .line 1450
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v2

    .line 1452
    .local v2, "targetSdkVersion":I
    if-nez p2, :cond_1

    .line 1453
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activity cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :catch_0
    move-exception v1

    .line 1463
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 1465
    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1449
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    .line 1455
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v3, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1456
    const/4 v3, 0x0

    array-length v4, p3

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p3, v3

    .line 1457
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 1458
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activities cannot contain null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1460
    :cond_2
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v5, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1456
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1469
    .end local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    throw v1
.end method

.method public setP2pModes(II)V
    .locals 2
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I

    .prologue
    .line 2073
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    :goto_0
    return-void

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPreferredSimSlot(I)Z
    .locals 2
    .param p1, "preferredSim"    # I

    .prologue
    .line 2598
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setPreferredSimSlot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2599
    :catch_0
    move-exception v0

    .line 2600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2601
    const/4 v1, 0x0

    return v1
.end method

.method public setRwP2pMode(Z)Z
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 2359
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setRwP2pMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2360
    :catch_0
    move-exception v0

    .line 2361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2362
    const/4 v1, 0x0

    return v1
.end method

.method public setSimLocked(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    .line 2437
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setSimLocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2435
    :goto_0
    return-void

    .line 2438
    :catch_0
    move-exception v0

    .line 2439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2440
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Fail to setSimLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startApc()I
    .locals 2

    .prologue
    .line 2744
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->startApc()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2745
    :catch_0
    move-exception v0

    .line 2746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2747
    const/4 v1, -0x1

    return v1
.end method

.method public startCoverAuth()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2627
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->startCoverAuth()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2628
    :catch_0
    move-exception v0

    .line 2629
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Failed to transmit authentication data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2631
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to transmit authentication data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopCoverAuth()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2654
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->stopCoverAuth()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2655
    :catch_0
    move-exception v0

    .line 2656
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Failed to stop authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2658
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to stop authentication"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public transceiveAuthData([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2640
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->transceiveAuthData([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2641
    :catch_0
    move-exception v0

    .line 2642
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Failed to transmit authentication data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2644
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to transmit authentication data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unsetDiscoveryTech(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1675
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "SPay : unsetDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->unsetDiscoveryTech(Landroid/app/Activity;)V

    .line 1674
    return-void
.end method

.method public updateRfFile(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "version"    # I

    .prologue
    .line 1723
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcActivityManager;->updateRfFile(Landroid/app/Activity;I)V

    .line 1722
    return-void
.end method

.method public writeEdc(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2731
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->writeEdc(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2734
    const/4 v1, 0x0

    return v1
.end method
