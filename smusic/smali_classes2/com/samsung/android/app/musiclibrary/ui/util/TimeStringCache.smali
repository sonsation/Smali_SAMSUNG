.class public abstract Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;
.super Ljava/lang/Object;
.source "TimeStringCache.java"


# instance fields
.field private final DEBUG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private final mMaxCachedTime:I

.field public final mValues:Ljava/util/ArrayList;
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
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "maxCachedTime"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->DEBUG:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mMaxCachedTime:I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->LOG_TAG:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract buildValue(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    return-void
.end method

.method public getValue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secs"    # I

    .prologue
    .line 58
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mMaxCachedTime:I

    if-gt p2, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 60
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mMaxCachedTime:I

    if-gt p2, v2, :cond_1

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    if-ge v2, v3, :cond_1

    .line 62
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->buildValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mMaxCachedTime:I

    if-gt p2, v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "res":Ljava/lang/String;
    move-object v1, v0

    .line 80
    .end local v0    # "res":Ljava/lang/String;
    :cond_3
    return-object v1
.end method
