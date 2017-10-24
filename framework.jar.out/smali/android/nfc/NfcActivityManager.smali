.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/IAppCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;,
        Landroid/nfc/NfcActivityManager$NfcApplicationState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field private static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field static final TAG:Ljava/lang/String; = "NFC"

.field private static mLedCoverCallback:Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Landroid/nfc/NfcActivityManager;->mLedCoverCallback:Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/nfc/IAppCallback$Stub;-><init>()V

    .line 232
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 233
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    .line 231
    return-void
.end method


# virtual methods
.method public LedCoverNotification()V
    .locals 2

    .prologue
    .line 478
    sget-object v0, Landroid/nfc/NfcActivityManager;->mLedCoverCallback:Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;

    if-nez v0, :cond_0

    .line 479
    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "LedCover Callback is not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 483
    :cond_0
    sget-object v0, Landroid/nfc/NfcActivityManager;->mLedCoverCallback:Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;

    if-eqz v0, :cond_1

    .line 484
    sget-object v0, Landroid/nfc/NfcActivityManager;->mLedCoverCallback:Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;->onRfDetected()V

    .line 477
    :cond_1
    return-void
.end method

.method public changeDiscoveryTech(Landroid/os/Binder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    .line 314
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/nfc/INfcAdapter;->changeDiscoveryTech(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeRouting(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "userHandle"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 324
    .local p5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    monitor-enter p0

    .line 325
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v7

    .line 326
    .local v7, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v1, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 327
    .local v1, "token":Landroid/os/Binder;
    iput p1, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 328
    iput-object p3, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    .line 329
    iput-object p4, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    .line 330
    iput-object p5, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    .line 331
    iget-boolean v6, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v6, "isResumed":Z
    monitor-exit p0

    .line 333
    if-eqz v6, :cond_0

    move-object v0, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 334
    invoke-virtual/range {v0 .. v5}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 320
    :goto_0
    return-void

    .line 324
    .end local v1    # "token":Landroid/os/Binder;
    .end local v6    # "isResumed":Z
    .end local v7    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 336
    .restart local v1    # "token":Landroid/os/Binder;
    .restart local v6    # "isResumed":Z
    .restart local v7    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    const-string/jumbo v0, "NFC"

    const-string/jumbo v2, "Activity must be resumed."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "userHandle"    # I
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Binder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcAdapter;->changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v6

    .line 344
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v6}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createBeamShareData(B)Landroid/nfc/BeamShareData;
    .locals 19
    .param p1, "peerLlcpVersion"    # B

    .prologue
    .line 517
    new-instance v3, Landroid/nfc/NfcEvent;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    move/from16 v0, p1

    invoke-direct {v3, v15, v0}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    .line 519
    .local v3, "event":Landroid/nfc/NfcEvent;
    const-string/jumbo v15, "NFC"

    const-string/jumbo v16, "createBeamShareData start new"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    monitor-enter p0

    .line 522
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 523
    .local v10, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v10, :cond_0

    const/4 v15, 0x0

    monitor-exit p0

    return-object v15

    .line 525
    :cond_0
    :try_start_1
    iget-object v8, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 526
    .local v8, "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    iget-object v13, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 527
    .local v13, "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    iget-object v5, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 528
    .local v5, "message":Landroid/nfc/NdefMessage;
    iget-object v12, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 529
    .local v12, "uris":[Landroid/net/Uri;
    iget v4, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 530
    .local v4, "flags":I
    iget-object v2, v10, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "activity":Landroid/app/Activity;
    monitor-exit p0

    .line 532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 535
    .local v6, "ident":J
    if-eqz v8, :cond_1

    .line 536
    :try_start_2
    invoke-interface {v8, v3}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v5

    .line 538
    :cond_1
    if-eqz v13, :cond_6

    .line 539
    invoke-interface {v13, v3}, Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;

    move-result-object v12

    .line 540
    if-eqz v12, :cond_6

    .line 541
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v14, "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget-object v11, v12, v15

    .line 543
    .local v11, "uri":Landroid/net/Uri;
    if-nez v11, :cond_2

    .line 544
    const-string/jumbo v17, "NFC"

    const-string/jumbo v18, "Uri not allowed to be null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 521
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v4    # "flags":I
    .end local v5    # "message":Landroid/nfc/NdefMessage;
    .end local v6    # "ident":J
    .end local v8    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local v10    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "uris":[Landroid/net/Uri;
    .end local v13    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 547
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v4    # "flags":I
    .restart local v5    # "message":Landroid/nfc/NdefMessage;
    .restart local v6    # "ident":J
    .restart local v8    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local v10    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "uris":[Landroid/net/Uri;
    .restart local v13    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .restart local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 548
    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string/jumbo v17, "file"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 549
    const-string/jumbo v17, "content"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 554
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v11

    .line 555
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 568
    .end local v9    # "scheme":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_1
    move-exception v15

    .line 569
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 568
    throw v15

    .line 550
    .restart local v9    # "scheme":Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    :try_start_4
    const-string/jumbo v17, "NFC"

    const-string/jumbo v18, "Uri needs to have either scheme file or scheme content"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 558
    .end local v9    # "scheme":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, [Landroid/net/Uri;

    move-object v12, v0

    .line 561
    .end local v14    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    if-eqz v12, :cond_7

    array-length v15, v12

    if-lez v15, :cond_7

    .line 562
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v11, v12, v15

    .line 564
    .restart local v11    # "uri":Landroid/net/Uri;
    const-string/jumbo v17, "com.android.nfc"

    .line 565
    const/16 v18, 0x1

    .line 564
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v11, v1}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 562
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 569
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    new-instance v15, Landroid/nfc/BeamShareData;

    new-instance v16, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-direct {v15, v5, v12, v0, v4}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    return-object v15
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 225
    .local v0, "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcActivityState;->destroy()V

    .line 227
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 223
    return-void

    .end local v0    # "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 259
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 260
    const/4 v3, 0x0

    iput v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 261
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 262
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 263
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0, v2, v5, v4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 254
    :cond_0
    return-void

    .line 257
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 243
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 244
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 245
    iput-object p4, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 246
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 247
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, v2, p3, p4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 238
    :cond_0
    return-void

    .line 241
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 197
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    .line 198
    return-object v0

    .line 201
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .end local v1    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 86
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appState$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .line 87
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .line 88
    return-object v0

    .line 91
    .end local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method declared-synchronized findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3

    .prologue
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 216
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 217
    return-object v0

    .line 220
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .end local v1    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 207
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V

    .line 209
    .restart local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 211
    return-object v0

    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 609
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 746
    monitor-enter p0

    .line 747
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 748
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 745
    return-void

    .line 746
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v12

    .line 693
    .local v12, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NFC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :cond_0
    if-nez v12, :cond_1

    monitor-exit p0

    return-void

    .line 695
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 696
    iget-object v1, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 697
    .local v1, "token":Landroid/os/Binder;
    iget v0, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    if-eqz v0, :cond_8

    const/4 v11, 0x1

    .line 699
    .local v11, "readerModeFlagsSet":Z
    :goto_0
    iget v0, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    const/4 v10, 0x1

    .line 700
    .local v10, "pollTechSet":Z
    :goto_1
    iget v0, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    const/4 v8, 0x1

    .line 701
    .local v8, "listenTechSet":Z
    :goto_2
    iget-object v0, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    if-eqz v0, :cond_b

    :cond_2
    const/4 v6, 0x1

    .line 702
    .local v6, "changeRoutingFlagsSet":Z
    :goto_3
    iget v2, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 704
    .local v2, "userId":I
    iget v7, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->defaultRfVesrion:I

    .line 705
    .local v7, "defaultRfVersion":I
    iget v9, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->overrideRfVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v9, "overrideRfVersion":I
    monitor-exit p0

    .line 709
    if-eqz v11, :cond_3

    .line 711
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 718
    :cond_3
    if-eq v7, v9, :cond_4

    .line 719
    invoke-virtual {p0, v1, v7}, Landroid/nfc/NfcActivityManager;->updateRfFile(Landroid/os/Binder;I)V

    .line 724
    :cond_4
    if-nez v10, :cond_5

    if-eqz v8, :cond_6

    .line 725
    :cond_5
    const/16 v0, 0xff

    const/16 v3, 0xff

    invoke-virtual {p0, v1, v0, v3}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 728
    :cond_6
    if-eqz v6, :cond_7

    .line 730
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 679
    :cond_7
    return-void

    .line 697
    .end local v2    # "userId":I
    .end local v6    # "changeRoutingFlagsSet":Z
    .end local v7    # "defaultRfVersion":I
    .end local v8    # "listenTechSet":Z
    .end local v9    # "overrideRfVersion":I
    .end local v10    # "pollTechSet":Z
    .end local v11    # "readerModeFlagsSet":Z
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "readerModeFlagsSet":Z
    goto :goto_0

    .line 699
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "pollTechSet":Z
    goto :goto_1

    .line 700
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "listenTechSet":Z
    goto :goto_2

    .line 701
    :cond_b
    :try_start_2
    iget-object v0, v12, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    const/4 v6, 0x0

    .restart local v6    # "changeRoutingFlagsSet":Z
    goto :goto_3

    .line 691
    .end local v1    # "token":Landroid/os/Binder;
    .end local v6    # "changeRoutingFlagsSet":Z
    .end local v8    # "listenTechSet":Z
    .end local v10    # "pollTechSet":Z
    .end local v11    # "readerModeFlagsSet":Z
    .end local v12    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 618
    const/4 v12, 0x0

    .line 620
    .local v12, "readerModeFlags":I
    const/4 v10, -0x1

    .line 621
    .local v10, "pollTech":I
    const/4 v8, -0x1

    .line 622
    .local v8, "listenTech":I
    const/4 v4, 0x0

    .line 623
    .local v4, "proto":Ljava/lang/String;
    const/4 v5, 0x0

    .line 624
    .local v5, "tech":Ljava/lang/String;
    const/4 v3, -0x1

    .line 625
    .local v3, "userId":I
    const/4 v6, 0x0

    .line 631
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v11, 0x0

    .line 633
    .local v11, "readerModeExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 634
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v13

    .line 635
    .local v13, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NFC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onResume() for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :cond_0
    if-nez v13, :cond_1

    monitor-exit p0

    return-void

    .line 637
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 638
    iget-object v2, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 639
    .local v2, "token":Landroid/os/Binder;
    iget v12, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 640
    iget-object v11, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 642
    .local v11, "readerModeExtras":Landroid/os/Bundle;
    iget v10, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 643
    iget v8, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 644
    iget-object v4, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    .line 645
    .local v4, "proto":Ljava/lang/String;
    iget-object v5, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    .line 646
    .local v5, "tech":Ljava/lang/String;
    iget-object v6, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    .line 647
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget v3, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 649
    iget v7, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->defaultRfVesrion:I

    .line 650
    .local v7, "defaultRfVersion":I
    iget v9, v13, Landroid/nfc/NfcActivityManager$NfcActivityState;->overrideRfVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v9, "overrideRfVersion":I
    monitor-exit p0

    .line 654
    if-eqz v12, :cond_2

    .line 655
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v11}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 660
    :cond_2
    if-eq v7, v9, :cond_3

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/nfc/NfcActivityManager;->updateRfFile(Landroid/os/Binder;I)V

    .line 665
    :cond_3
    const/4 v1, -0x1

    if-ne v8, v1, :cond_4

    const/4 v1, -0x1

    if-eq v10, v1, :cond_5

    .line 666
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v8}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 669
    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_8

    :cond_6
    :goto_0
    move-object/from16 v1, p0

    .line 670
    invoke-virtual/range {v1 .. v6}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 674
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 617
    return-void

    .line 633
    .end local v2    # "token":Landroid/os/Binder;
    .end local v4    # "proto":Ljava/lang/String;
    .end local v5    # "tech":Ljava/lang/String;
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v7    # "defaultRfVersion":I
    .end local v9    # "overrideRfVersion":I
    .end local v11    # "readerModeExtras":Landroid/os/Bundle;
    .end local v13    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 669
    .restart local v2    # "token":Landroid/os/Binder;
    .restart local v4    # "proto":Ljava/lang/String;
    .restart local v5    # "tech":Ljava/lang/String;
    .restart local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v7    # "defaultRfVersion":I
    .restart local v9    # "overrideRfVersion":I
    .restart local v11    # "readerModeExtras":Landroid/os/Bundle;
    .restart local v13    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_8
    if-eqz v6, :cond_7

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 741
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 613
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 737
    return-void
.end method

.method public onNdefPushComplete(B)V
    .locals 4
    .param p1, "peerLlcpVersion"    # B

    .prologue
    .line 578
    monitor-enter p0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 580
    .local v2, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    .line 582
    :cond_0
    :try_start_1
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    monitor-exit p0

    .line 584
    new-instance v1, Landroid/nfc/NfcEvent;

    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v3, p1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    .line 586
    .local v1, "event":Landroid/nfc/NfcEvent;
    if-eqz v0, :cond_1

    .line 587
    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    .line 576
    :cond_1
    return-void

    .line 578
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local v1    # "event":Landroid/nfc/NfcEvent;
    .end local v2    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 594
    monitor-enter p0

    .line 595
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 596
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 598
    :cond_0
    :try_start_1
    iget-object v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    monitor-exit p0

    .line 602
    if-eqz v0, :cond_1

    .line 603
    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    .line 592
    :cond_1
    return-void

    .line 594
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 96
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .end local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcApplicationState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V

    .line 98
    .restart local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->register()V

    .line 94
    return-void
.end method

.method requestNfcServiceCallback()V
    .locals 2

    .prologue
    .line 494
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p0}, Landroid/nfc/INfcAdapter;->setAppCallback(Landroid/nfc/IAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDiscoveryTech(Landroid/app/Activity;II)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 286
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 287
    iput p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 288
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 289
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0, v2, p2, p3}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 281
    :cond_0
    return-void

    .line 284
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setLedCoverRfDetectedCallback(Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;

    .prologue
    .line 468
    sput-object p1, Landroid/nfc/NfcActivityManager;->mLedCoverCallback:Landroid/nfc/NfcAdapter$SemLedCoverRfDetectedCallback;

    .line 470
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p0}, Landroid/nfc/INfcAdapter;->setLedCoverCallback(Landroid/nfc/IAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 385
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 386
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 388
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 381
    :goto_0
    return-void

    .line 383
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 393
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .prologue
    .line 401
    monitor-enter p0

    .line 402
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 403
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 404
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 406
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 399
    :goto_0
    return-void

    .line 401
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 411
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "flags"    # I

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 419
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 420
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 421
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 423
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 415
    :goto_0
    return-void

    .line 417
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 428
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p3, "flags"    # I

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 437
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 438
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 439
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 441
    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 433
    :goto_0
    return-void

    .line 435
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 446
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .prologue
    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 455
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 456
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 458
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 451
    :goto_0
    return-void

    .line 453
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 463
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    goto :goto_0
.end method

.method public setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 272
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "Setting reader mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p0, p2, p3}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 105
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    .line 106
    const-string/jumbo v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->unregister()V

    .line 103
    return-void
.end method

.method public unsetDiscoveryTech(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0xff

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 301
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v3, -0x1

    iput v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 302
    const/4 v3, -0x1

    iput v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 303
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 304
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isResumed":Z
    monitor-exit p0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, v2, v4, v4}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 296
    :cond_0
    return-void

    .line 299
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public updateRfFile(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "version"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "isResumed":Z
    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 357
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 358
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 360
    .local v0, "isResumed":Z
    iput p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->overrideRfVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, v2, p2}, Landroid/nfc/NfcActivityManager;->updateRfFile(Landroid/os/Binder;I)V

    .line 352
    :goto_0
    return-void

    .line 355
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 366
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .restart local v2    # "token":Landroid/os/Binder;
    :cond_0
    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "RF file is not changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateRfFile(Landroid/os/Binder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "version"    # I

    .prologue
    .line 372
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->updateRfFile(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method verifyNfcPermission()V
    .locals 2

    .prologue
    .line 502
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->verifyNfcPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method
