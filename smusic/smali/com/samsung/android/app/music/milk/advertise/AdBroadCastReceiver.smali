.class public Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdBroadCastReceiver.java"


# static fields
.field public static final ACTION_POPUP_CLOSE:Ljava/lang/String; = "milk.advertise.popup.close"

.field public static final ACTION_POPUP_IMAGE:Ljava/lang/String; = "milk.advertise.impression.messge"

.field private static final BR_PERMISSION_NAME:Ljava/lang/String; = "com.samsung.android.app.music.permission.C2D_MESSAGE"

.field public static final EXTRA_POPUP_TYPE:Ljava/lang/String; = "EXTRA_POPUP_TYPE"

.field public static final TAG:Ljava/lang/String; = "Advert.AdBroadCastReceiver"

.field private static mInst:Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;


# instance fields
.field private actionFilter:Landroid/content/IntentFilter;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private stickyActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private subscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    .line 39
    const-string v0, "Advert.AdBroadCastReceiver"

    const-string v1, "AdBroadCastReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->mContext:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->reset()V

    .line 42
    return-void
.end method

.method private callPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v1, "Advert.AdBroadCastReceiver"

    const-string v2, "callPopupClosed"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;->onPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    goto :goto_0

    .line 106
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private callPopupImage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v1, "Advert.AdBroadCastReceiver"

    const-string v2, "callPopupImage"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;->onPopupAdImage()V

    goto :goto_0

    .line 96
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static postAdPopupImage(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v0, "Advert.AdBroadCastReceiver"

    const-string/jumbo v1, "postAdPopupImage  : postAdPopupImage"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "milk.advertise.impression.messge"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    return-void
.end method


# virtual methods
.method public clearStickyAction()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    :cond_0
    return-void
.end method

.method public isSubscriber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    :try_start_0
    const-string v2, "Advert.AdBroadCastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 86
    :goto_1
    return-void

    .line 72
    :sswitch_0
    const-string v4, "milk.advertise.impression.messge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "milk.advertise.popup.close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->callPopupImage()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ne":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v1    # "ne":Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    const-string v2, "EXTRA_POPUP_TYPE"

    const/4 v3, 0x2

    .line 78
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->create(I)Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    move-result-object v2

    .line 77
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->callPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 72
    :sswitch_data_0
    .sparse-switch
        -0x4dadd4ff -> :sswitch_0
        -0x145f42a4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postStickyAdPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V
    .locals 4
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .prologue
    .line 163
    const-string v1, "Advert.AdBroadCastReceiver"

    const-string/jumbo v2, "postStickyAdPopupClosed  : postAdPopupClosed"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "milk.advertise.popup.close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_POPUP_TYPE"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "Advert.AdBroadCastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postStickyAdPopupClosed  : stickyActionList size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->actionFilter:Landroid/content/IntentFilter;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->actionFilter:Landroid/content/IntentFilter;

    const-string v1, "milk.advertise.impression.messge"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->actionFilter:Landroid/content/IntentFilter;

    const-string v1, "milk.advertise.popup.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    return-void
.end method

.method public subscribe(Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;)V
    .locals 5
    .param p1, "subscriber"    # Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;

    .prologue
    .line 109
    const-string v2, "Advert.AdBroadCastReceiver"

    const-string/jumbo v3, "subscribe : called"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 112
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 113
    const-string v2, "Advert.AdBroadCastReceiver"

    const-string/jumbo v3, "subscribe : context is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const-string v2, "Advert.AdBroadCastReceiver"

    const-string/jumbo v3, "subscribe  : registerReceiver"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->actionFilter:Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.app.music.permission.C2D_MESSAGE"

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 123
    const-string v2, "Advert.AdBroadCastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe  : register subscriber key :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const-string v2, "Advert.AdBroadCastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe  : stickyActionList size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->stickyActionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.app.music.permission.C2D_MESSAGE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unsubscribe(Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;)V
    .locals 3
    .param p1, "subscriber"    # Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "Advert.AdBroadCastReceiver"

    const-string/jumbo v2, "unsubscribe  : unsubscribe"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 142
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 143
    const-string v1, "Advert.AdBroadCastReceiver"

    const-string/jumbo v2, "unsubscribe : context is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method
