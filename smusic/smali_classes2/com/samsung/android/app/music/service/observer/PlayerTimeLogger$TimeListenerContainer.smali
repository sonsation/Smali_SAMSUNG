.class Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;
.super Ljava/lang/Object;
.source "PlayerTimeLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeListenerContainer"
.end annotation


# instance fields
.field private final mHashSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->mHashSet:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$1;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;-><init>()V

    return-void
.end method


# virtual methods
.method addTimeListener(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->mHashSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->mHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 218
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->mHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 207
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->mHashSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    .line 210
    .local v1, "l":Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;
    const-string v2, "SMUSIC-SV-MediaCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayerTimeLogger onEventHappened "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-interface {v1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;->onEventHappened()V

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 214
    .end local v1    # "l":Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;
    :cond_0
    return-void
.end method
