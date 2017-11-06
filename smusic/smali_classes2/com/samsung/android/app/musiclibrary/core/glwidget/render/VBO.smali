.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;
.super Ljava/lang/Object;
.source "VBO.java"


# instance fields
.field private final mLength:I

.field private mName:[I


# direct methods
.method public constructor <init>([FI)V
    .locals 7
    .param p1, "data"    # [F
    .param p2, "stripeLength"    # I

    .prologue
    const v6, 0x8892

    const/4 v5, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    array-length v3, p1

    div-int/2addr v3, p2

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mLength:I

    .line 34
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    .line 35
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 37
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    aget v3, v3, v5

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 38
    array-length v3, p1

    mul-int/lit8 v0, v3, 0x4

    .line 39
    .local v0, "attribBuferSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 40
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 42
    .local v2, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 43
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    const v3, 0x88e8

    invoke-static {v6, v0, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    .line 52
    const v0, 0x8892

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 53
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mLength:I

    return v0
.end method
