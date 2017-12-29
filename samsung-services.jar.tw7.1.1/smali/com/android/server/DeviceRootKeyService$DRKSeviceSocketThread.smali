.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DRKSeviceSocketThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;
    }
.end annotation


# static fields
.field private static final BUF_MAX:I = 0x2000

.field private static final CMD_ID_ADD_TLV:I = 0x6

.field private static final CMD_ID_CREATE_SERVICE_KEY_SESSION:I = 0x3

.field private static final CMD_ID_GET_DRK_UID:I = 0x2

.field private static final CMD_ID_INIT_TLV:I = 0x5

.field private static final CMD_ID_IS_EXIST_DRK:I = 0x1

.field private static final CMD_ID_RELEASE_SERVICE_KEY_SESSION:I = 0x4

.field private static final CMD_ID_SET_TEST_DRK:I = 0x7

.field private static final DRK_SERIVCE_SOCKET_NAME:Ljava/lang/String; = "DeviceRootKeyService"

.field private static final DRK_SERVICE_PROTOCOL_VERSION:B = 0x1t

.field private static final ERR_FAILED_ACTION:S = 0x5s

.field private static final ERR_INVALID_COMMAND_ID:S = 0x3s

.field private static final ERR_INVALID_DATA:S = 0x1s

.field private static final ERR_INVALID_VERSION:S = 0x2s

.field private static final ERR_NOT_EXIST_DRK:S = 0x4s

.field private static final ERR_NO_ERROR:S = 0x0s

.field private static final ERR_PERMISSION_DENIED:S = 0x6s

.field private static final MIN_IN_DATA_SIZE:I = 0xc

.field private static final MIN_OUT_DATA_SIZE:I = 0x9

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final POS_COMMAND_ID:I = 0x1

.field private static final POS_IN_BOOL_VALUE:I = 0x7

.field private static final POS_IN_INT_VALUE:I = 0x3

.field private static final POS_IN_STRING_SIZE:I = 0x8

.field private static final POS_IN_STRING_VALUE:I = 0xc

.field private static final POS_OUT_DATA_VALUE:I = 0x9

.field private static final POS_OUT_ERR_VALUE:I = 0x3

.field private static final POS_OUT_SIZE_VALUE:I = 0x5

.field private static final POS_VERSION:I


# instance fields
.field private input:[B

.field private mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field final synthetic this$0:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/DeviceRootKeyService;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 457
    return-void
.end method

.method private addTlv(I[B)Z
    .locals 1
    .param p1, "tlvTag"    # I
    .param p2, "tlvValue"    # [B

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    move-result v0

    return v0
.end method

.method private executeCommand([BZ)[B
    .locals 12
    .param p1, "input"    # [B
    .param p2, "hasPermission"    # Z

    .prologue
    const/4 v11, 0x6

    const/4 v8, 0x0

    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 527
    new-instance v2, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    .line 528
    .local v2, "icp":Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
    new-instance v3, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;

    invoke-direct {v3, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    .line 530
    .local v3, "odg":Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;
    invoke-virtual {v2, p1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ParserData([B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 532
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Parsing is failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v3, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    .line 534
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    .line 535
    invoke-virtual {v3, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 536
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    return-object v5

    .line 539
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    .line 540
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    .line 542
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v5

    if-eq v5, v7, :cond_1

    .line 544
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version is not matched. Caller version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 546
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    return-object v5

    .line 549
    :cond_1
    if-nez p2, :cond_2

    .line 551
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Permission denied."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v3, v11}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 553
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    return-object v5

    .line 556
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 633
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 637
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v5

    return-object v5

    .line 559
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/DeviceRootKeyService;->isExistDeviceRootKey(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 560
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_0

    .line 562
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_0

    .line 566
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/DeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "drkUID":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 569
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 570
    invoke-virtual {v3, v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_4
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_0

    .line 579
    .end local v1    # "drkUID":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v5, v7}, Lcom/android/server/DeviceRootKeyService;->-set1(Lcom/android/server/DeviceRootKeyService;Z)Z

    .line 581
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getEnableTlv()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 582
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    .line 586
    .local v4, "serviceKey":[B
    :goto_1
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v5, v9}, Lcom/android/server/DeviceRootKeyService;->-set1(Lcom/android/server/DeviceRootKeyService;Z)Z

    .line 588
    if-eqz v4, :cond_6

    .line 590
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 591
    invoke-virtual {v3, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData([B)V

    goto :goto_0

    .line 584
    .end local v4    # "serviceKey":[B
    :cond_5
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    .restart local v4    # "serviceKey":[B
    goto :goto_1

    .line 594
    :cond_6
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_0

    .line 598
    .end local v4    # "serviceKey":[B
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v5}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    .line 599
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_0

    .line 603
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->initTlv()V

    .line 604
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_0

    .line 608
    :pswitch_5
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvTag()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvValue()[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->addTlv(I[B)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 609
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_0

    .line 611
    :cond_7
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_0

    .line 617
    :pswitch_6
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getRawData()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/DeviceRootKeyService;->-wrap1(Lcom/android/server/DeviceRootKeyService;[B)[B

    move-result-object v0

    .local v0, "blobData":[B
    if-eqz v0, :cond_9

    .line 619
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v5, v9}, Lcom/android/server/DeviceRootKeyService;->-set0(Lcom/android/server/DeviceRootKeyService;Z)Z

    .line 621
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v5, v0}, Lcom/android/server/DeviceRootKeyService;->setDeviceRootKey([B)I

    move-result v5

    if-nez v5, :cond_8

    .line 622
    invoke-virtual {v3, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 626
    :goto_2
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v5, v7}, Lcom/android/server/DeviceRootKeyService;->-set0(Lcom/android/server/DeviceRootKeyService;Z)Z

    goto/16 :goto_0

    .line 624
    :cond_8
    invoke-virtual {v3, v10}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_2

    .line 629
    :cond_9
    invoke-virtual {v3, v11}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private initTlv()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 512
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 465
    :try_start_0
    new-instance v5, Landroid/net/LocalServerSocket;

    const-string v6, "DeviceRootKeyService"

    invoke-direct {v5, v6}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    .line 466
    const/16 v5, 0x2000

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v5, :cond_2

    .line 477
    :try_start_1
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Ready to connect."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v5}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    .line 480
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_1

    .line 482
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 483
    .local v2, "is":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 485
    .local v3, "os":Ljava/io/OutputStream;
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 486
    .local v4, "readLen":I
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    :goto_1
    if-lez v4, :cond_1

    .line 490
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    .line 492
    .local v0, "cred":Landroid/net/Credentials;
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v7

    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/DeviceRootKeyService;->-wrap0(Lcom/android/server/DeviceRootKeyService;IIZ)Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->executeCommand([BZ)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 494
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 496
    if-lez v4, :cond_0

    .line 497
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 504
    .end local v0    # "cred":Landroid/net/Credentials;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "readLen":I
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Socket connection may be closed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Failed to excute socket service."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 501
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Disconnected."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 509
    :cond_2
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Socket thread has been stopped."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method
