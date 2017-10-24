.class public Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private final mFloatViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mWLPListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            "Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWLPStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowLayoutParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$1;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 87
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    .line 89
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 86
    return-void
.end method

.method private createLayoutParams(Ljava/lang/String;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "forcePortrait"    # Z

    .prologue
    const/4 v2, -0x1

    .line 104
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 105
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 108
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 109
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 110
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 111
    const/high16 v1, 0x4080000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 113
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 115
    if-eqz p2, :cond_0

    .line 116
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 118
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeAllViews()V
    .locals 10

    .prologue
    .line 237
    sget-object v8, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeAllViews"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v9, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 240
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v7, "removedViewKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 242
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 243
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 245
    .local v0, "curView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 247
    .local v2, "isRemovable":Z
    if-eqz v2, :cond_0

    .line 248
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v8, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v8, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 250
    instance-of v8, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;

    if-eqz v8, :cond_1

    .line 251
    check-cast v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;

    .end local v0    # "curView":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;->forcedDismiss()V

    .line 253
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 239
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;"
    .end local v2    # "isRemovable":Z
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;>;"
    .end local v7    # "removedViewKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 258
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;>;"
    .restart local v7    # "removedViewKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "removedKey$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 259
    .local v5, "removedKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 260
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->removeWLP(Landroid/view/WindowManager$LayoutParams;)V

    .line 261
    iget-object v8, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "removedKey":Ljava/lang/String;
    :cond_3
    monitor-exit v9

    .line 236
    return-void
.end method


# virtual methods
.method public addWLP(Landroid/view/WindowManager$LayoutParams;Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;)V
    .locals 5
    .param p1, "wlp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "listener"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    monitor-enter v2

    .line 268
    :try_start_0
    sget-object v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addWLP size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", wlp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 272
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 274
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;->layoutParamsUpdated()V

    .line 279
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const v1, 0x3f666666    # 0.9f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 281
    if-eqz p2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;->layoutParamsUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 266
    return-void

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hideFloatingView(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 224
    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideFloatingView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->removeWLP(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 223
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeWLP(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "wlp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    monitor-enter v3

    .line 290
    :try_start_0
    sget-object v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeWLP size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", wlp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 298
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    .line 299
    return-void

    .line 302
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 303
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f666666    # 0.9f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 304
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;

    invoke-interface {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;->layoutParamsUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v3

    .line 288
    return-void

    .line 289
    .end local v0    # "idx":I
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDuration(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 208
    sget-object v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDuration k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 213
    return-void

    .line 216
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 217
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    iput-wide p2, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 219
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 207
    return-void

    .line 209
    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setFlag(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isDimEffect"    # Z
    .param p3, "isBlurEffect"    # Z

    .prologue
    .line 181
    sget-object v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlag k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 186
    return-void

    .line 189
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 191
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    .line 192
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 197
    :goto_0
    if-eqz p3, :cond_4

    .line 198
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 203
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 180
    return-void

    .line 194
    :cond_3
    :try_start_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 182
    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 200
    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    :try_start_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZZJ)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isDimEffect"    # Z
    .param p4, "isBlurEffect"    # Z
    .param p5, "autoRemove"    # Z
    .param p6, "forcePortrait"    # Z
    .param p7, "dimDuration"    # J

    .prologue
    .line 138
    sget-object v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFloatingView k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-direct {p0, p1, p6}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->createLayoutParams(Ljava/lang/String;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    .line 154
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 159
    :goto_0
    if-eqz p4, :cond_3

    .line 160
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 165
    :goto_1
    iput-wide p7, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$2;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->addWLP(Landroid/view/WindowManager$LayoutParams;Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 137
    return-void

    .line 156
    :cond_2
    :try_start_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 162
    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :try_start_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
