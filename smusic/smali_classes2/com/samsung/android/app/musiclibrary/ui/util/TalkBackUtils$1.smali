.class final Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;
.super Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;
.source "TalkBackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "maxCachedTime"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;-><init>(ILjava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected buildValue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secs"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 34
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    div-int/lit16 v0, p2, 0xe10

    .line 36
    .local v0, "hours":I
    mul-int/lit16 v3, v0, 0xe10

    sub-int v3, p2, v3

    div-int/lit8 v1, v3, 0x3c

    .line 37
    .local v1, "minutes":I
    rem-int/lit8 v2, p2, 0x3c

    .line 39
    .local v2, "seconds":I
    if-lez v0, :cond_0

    .line 40
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-static {p1, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->access$000(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1, v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->access$000(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->access$000(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1, v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->access$000(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->access$000(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
