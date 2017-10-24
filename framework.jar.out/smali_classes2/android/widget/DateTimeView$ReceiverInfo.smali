.class Landroid/widget/DateTimeView$ReceiverInfo;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo$1;,
        Landroid/widget/DateTimeView$ReceiverInfo$2;
    }
.end annotation


# instance fields
.field private final mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/DateTimeView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegistered:Z

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    .line 399
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo$1;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mIsRegistered:Z

    .line 430
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo$2;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mObserver:Landroid/database/ContentObserver;

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>()V

    return-void
.end method

.method static final getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 473
    .local v0, "ac":Landroid/content/Context;
    if-eqz v0, :cond_0

    .end local v0    # "ac":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "ac":Landroid/content/Context;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/widget/DateTimeView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .prologue
    .line 438
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 439
    .local v0, "register":Z
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    .line 437
    :cond_0
    return-void
.end method

.method getSoonestUpdateTime()J
    .locals 7

    .prologue
    .line 460
    const-wide v2, 0x7fffffffffffffffL

    .line 461
    .local v2, "result":J
    iget-object v6, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 462
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 463
    iget-object v6, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/DateTimeView;

    invoke-static {v6}, Landroid/widget/DateTimeView;->-get0(Landroid/widget/DateTimeView;)J

    move-result-wide v4

    .line 464
    .local v4, "time":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 465
    move-wide v2, v4

    .line 462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v4    # "time":J
    :cond_1
    return-wide v2
.end method

.method register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    iget-boolean v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 479
    const-string/jumbo v1, "DateTimeView"

    const-string/jumbo v2, "try register duplicated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mIsRegistered:Z

    .line 485
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    return-void
.end method

.method public removeView(Landroid/widget/DateTimeView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .prologue
    .line 446
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 445
    :cond_0
    return-void
.end method

.method unregister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    iget-boolean v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 496
    const-string/jumbo v0, "DateTimeView"

    const-string/jumbo v1, "try unregister duplicated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 499
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mIsRegistered:Z

    .line 501
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 493
    return-void
.end method

.method updateAll()V
    .locals 3

    .prologue
    .line 453
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 454
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 455
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    invoke-virtual {v2}, Landroid/widget/DateTimeView;->clearFormatAndUpdate()V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_0
    return-void
.end method
