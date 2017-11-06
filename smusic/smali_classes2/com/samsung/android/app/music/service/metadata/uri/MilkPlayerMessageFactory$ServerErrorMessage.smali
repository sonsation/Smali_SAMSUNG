.class final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "MilkPlayerMessageFactory.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerErrorMessage"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerErrorMessage"


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 478
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 479
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->mActivity:Landroid/app/Activity;

    .line 480
    return-void
.end method

.method static build(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "actionCode"    # I

    .prologue
    .line 465
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;-><init>(Landroid/os/Bundle;)V

    .line 466
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 467
    const-string v1, "extra_action_code"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setInteger(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 468
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->build()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method static obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 472
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public doPositive()V
    .locals 3

    .prologue
    .line 511
    const-string v1, "extra_action_code"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 512
    .local v0, "actionCode":I
    const/16 v1, 0x138a

    if-ne v0, v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTrackPlayDevicePermission(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 515
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getActivePlayerQueue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 516
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    .line 521
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    .line 522
    return-void

    .line 518
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    goto :goto_0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    const-string v1, "extra_action_code"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, "actionCode":I
    const/16 v1, 0x138a

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0304

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->getNegativeText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 493
    const-string v1, "extra_action_code"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 494
    .local v0, "actionCode":I
    const/16 v1, 0x138a

    if-ne v0, v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a03e3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a040e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 484
    const-string v1, "extra_action_code"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "actionCode":I
    const/16 v1, 0x138a

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a02d6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a02d9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 526
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 531
    const-string v0, "ServerErrorMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled : reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rspType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    packed-switch p2, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 535
    :pswitch_0
    if-nez p3, :cond_0

    .line 536
    const-string v0, "ServerErrorMessage"

    const-string v1, " onApiHandled : get track play permission succeed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_0
    const-string v0, "ServerErrorMessage"

    const-string v1, " onApiHandled : get track play permission failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x4ee9
        :pswitch_0
    .end packed-switch
.end method
