.class public abstract Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "DeleteMilkBaseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;
    }
.end annotation


# instance fields
.field private final mKeyColumn:Ljava/lang/String;

.field protected final mList:[J

.field private mListener:Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JLandroid/net/Uri;Ljava/lang/String;ZLcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "keyColumn"    # Ljava/lang/String;
    .param p5, "finish"    # Z
    .param p6, "l"    # Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    .prologue
    .line 21
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mList:[J

    .line 23
    iput-object p3, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mUri:Landroid/net/Uri;

    .line 24
    iput-object p4, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mKeyColumn:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mListener:Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    .line 26
    return-void
.end method

.method private deleteItems(Landroid/content/Context;[J)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [J

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 50
    aget-wide v4, p2, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 48
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    :cond_2
    aget-wide v4, p2, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 55
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 58
    :cond_3
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mKeyColumn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "deleted":I
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mList:[J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->deleteItems(Landroid/content/Context;[J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPostExecute(Ljava/lang/Integer;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mListener:Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->mListener:Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;->onTaskFinished(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
