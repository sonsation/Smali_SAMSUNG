.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNLIMITED:I = -0x1


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;

.field private final mMaxSize:I

.field private mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "factory"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;

    .prologue
    .line 64
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->lock:Ljava/lang/Object;

    .line 65
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mMaxSize:I

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;

    .line 67
    return-void
.end method

.method public static benchmark()V
    .locals 32

    .prologue
    .line 142
    const/high16 v26, 0x100000

    .line 144
    .local v26, "testElemCount":I
    new-instance v9, Ljava/util/ArrayList;

    const v29, 0x100001

    move/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v9, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 146
    .local v10, "s1":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v6, v0, :cond_0

    .line 147
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;-><init>()V

    .line 148
    .local v4, "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 149
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    .end local v4    # "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 152
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v18, v30, v10

    .line 155
    .local v18, "t1":J
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    const/16 v29, 0x10

    new-instance v30, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1;

    invoke-direct/range {v30 .. v30}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1;-><init>()V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    .line 162
    .local v8, "pool":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 164
    .local v12, "s2":J
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v26

    if-ge v6, v0, :cond_1

    .line 165
    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    .line 166
    .restart local v4    # "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 167
    invoke-virtual {v8, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 169
    .end local v4    # "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v20, v30, v12

    .line 171
    .local v20, "t2":J
    const/16 v27, 0x2800

    .line 173
    .local v27, "testMultiThreadElemCount":I
    new-instance v28, Landroid/os/HandlerThread;

    const-string v29, "RellocPool benchmark"

    invoke-direct/range {v28 .. v29}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 174
    .local v28, "thread":Landroid/os/HandlerThread;
    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->start()V

    .line 175
    :goto_2
    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v29

    if-nez v29, :cond_2

    .line 176
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    .line 178
    :cond_2
    new-instance v5, Landroid/os/Handler;

    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v29

    new-instance v30, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$2;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v5, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 186
    .local v5, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 187
    .local v14, "s3":J
    const/4 v6, 0x0

    :goto_3
    const/16 v29, 0x2800

    move/from16 v0, v29

    if-ge v6, v0, :cond_3

    .line 188
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;-><init>()V

    .line 189
    .restart local v4    # "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 190
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 191
    .local v7, "msg":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 187
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 193
    .end local v4    # "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_3
    :goto_4
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 194
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4

    .line 196
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v22, v30, v14

    .line 198
    .local v22, "t3":J
    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->quit()Z

    .line 201
    new-instance v28, Landroid/os/HandlerThread;

    .end local v28    # "thread":Landroid/os/HandlerThread;
    const-string v29, "RellocPool benchmark1"

    invoke-direct/range {v28 .. v29}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v28    # "thread":Landroid/os/HandlerThread;
    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->start()V

    .line 203
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v29

    if-nez v29, :cond_5

    .line 204
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_5

    .line 206
    :cond_5
    new-instance v5, Landroid/os/Handler;

    .end local v5    # "handler":Landroid/os/Handler;
    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v29

    new-instance v30, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$3;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v5, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 214
    .restart local v5    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 215
    .local v16, "s4":J
    const/4 v6, 0x0

    :goto_6
    const/16 v29, 0x2800

    move/from16 v0, v29

    if-ge v6, v0, :cond_6

    .line 216
    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    .line 217
    .restart local v4    # "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 218
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 219
    .restart local v7    # "msg":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 215
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 221
    .end local v4    # "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_6
    :goto_7
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 222
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    .line 224
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v24, v30, v16

    .line 225
    .local v24, "t4":J
    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->quit()Z

    .line 227
    sget-object v29, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "benchmark results, local object count: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " multithread object count: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x2800

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v29, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "new in single thread take "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms, new in multi threads take "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v29, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "obtain in single thread take "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms, obtain in multi threads take "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method


# virtual methods
.method public obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<TE;>;"
    const/4 v0, 0x0

    .line 78
    .local v0, "res":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;, "TE;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 81
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 82
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->isRecycled:Z

    .line 84
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    .line 89
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-nez v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;->makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    .line 96
    :cond_1
    return-object v0

    .line 89
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<TE;>;"
    .local p1, "elem":Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;, "TE;"
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->clear()V

    .line 111
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double recycle for elem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " check obtain/recycle balance!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mMaxSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mMaxSize:I

    if-ge v0, v2, :cond_2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->isRecycled:Z

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 120
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    .line 122
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
