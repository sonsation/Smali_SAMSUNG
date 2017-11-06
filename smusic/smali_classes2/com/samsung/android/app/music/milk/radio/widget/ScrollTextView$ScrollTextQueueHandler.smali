.class public Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollTextQueueHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mScrollArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollableView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;",
            ">;"
        }
    .end annotation
.end field

.field private nextIndex:I

.field private run:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    .line 131
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->nextIndex:I

    .line 132
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->run:Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollableView:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->calculateNextPos()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    .prologue
    .line 126
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->nextIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->start(Z)V

    return-void
.end method

.method private calculateNextPos()V
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->nextIndex:I

    .line 220
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->nextIndex:I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollableView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->nextIndex:I

    .line 221
    return-void
.end method

.method private getNextPos()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->nextIndex:I

    return v0
.end method

.method private start(Z)V
    .locals 8
    .param p1, "checkScrollable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 146
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 147
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start : array null or size 0"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start : called. check scroll - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->run:Z

    if-eqz v3, :cond_2

    .line 153
    sget-object v3, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start : already started!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->stop()V

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "delay":Z
    if-eqz p1, :cond_6

    .line 162
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 163
    .local v2, "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->getMeasuredWidth()I

    move-result v4

    if-gtz v4, :cond_5

    .line 164
    const/4 v0, 0x1

    .line 171
    .end local v2    # "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    :cond_4
    if-eqz v0, :cond_6

    .line 172
    sget-object v3, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    const-string v4, "need to give delay : "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$1;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 167
    .restart local v2    # "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->checkNeededScroll(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollableView:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    .end local v2    # "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollableView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 185
    sget-object v3, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start : does not need to start"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_7
    if-eqz p1, :cond_8

    .line 190
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollableView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 191
    .restart local v2    # "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setMarqueeRepeatLimit(I)V

    .line 192
    new-instance v4, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setListener(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;)V

    goto :goto_2

    .line 204
    .end local v2    # "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollableView:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->getNextPos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 205
    .local v1, "scrollTextView":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    invoke-virtual {v1, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 206
    iput-boolean v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->run:Z

    .line 207
    const-string v3, "ScrollTextView"

    const-string/jumbo v4, "start : started!!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addScrollTextView(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 232
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release : "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 234
    .local v0, "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setListener(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;)V

    goto :goto_0

    .line 236
    .end local v0    # "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollableView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 238
    return-void
.end method

.method public removeScrollTextView(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->start(Z)V

    .line 212
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop : "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->mScrollArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 226
    .local v0, "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    goto :goto_0

    .line 228
    .end local v0    # "view":Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->run:Z

    .line 229
    return-void
.end method
