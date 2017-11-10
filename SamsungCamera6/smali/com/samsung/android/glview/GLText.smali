.class public Lcom/samsung/android/glview/GLText;
.super Lcom/samsung/android/glview/GLView;
.source "GLText.java"


# static fields
.field private static final CHAR_ZERO_WIDTH_SPACE:C = '\u200b'

.field private static final DEFAULT_COLOR:I

.field private static final DEFAULT_TEXTSIZE_IN_DIP:F = 21.0f

.field private static final mDelimiters:[C


# instance fields
.field private mColor:I

.field private mHAlign:I

.field private mHeight:F

.field private mShadow:Z

.field private mSize:F

.field protected mString:Lcom/samsung/android/glview/GLStringTexture;

.field private mStringPosX:F

.field private mStringPosY:F

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/glview/R$color;->default_white_color:I

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x200bs
        0x2ds
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p6, :cond_0

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p6, :cond_0

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p6, :cond_0

    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p6, :cond_0

    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;Z)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p6, :cond_0

    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 9

    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p4, :cond_0

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;F)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p4, :cond_0

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput p5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FI)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p4, :cond_0

    iput p6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput p5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p4, :cond_0

    iput p6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput p5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 9

    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p2, :cond_0

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;FI)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p2, :cond_0

    iput p4, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput p3, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-object p2, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;FIZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    if-eqz p2, :cond_0

    iput p4, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput p3, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput-object p2, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    return-void
.end method

.method static getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    const/4 v2, 0x0

    int-to-float v3, v1

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    int-to-float v3, v1

    cmpl-float v3, v3, p2

    if-gtz v3, :cond_0

    move v3, v0

    goto :goto_0
.end method

.method public static getIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 9

    const/4 v8, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-object v4, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_4

    aget-char v0, v4, v3

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v8, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v2, 0x1

    if-ne v6, v7, :cond_2

    const/4 v2, -0x1

    :cond_0
    :goto_1
    if-ne v1, v8, :cond_3

    move v1, v2

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eq v2, v8, :cond_1

    if-le v1, v2, :cond_1

    move v1, v2

    goto :goto_2

    :cond_4
    return v1
.end method

.method public static getLastIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 9

    const/4 v8, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-object v4, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-char v0, v4, v3

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-eq v2, v8, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-ne v1, v8, :cond_2

    move v1, v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v8, :cond_1

    if-ge v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I
    .locals 12

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-eqz v9, :cond_1

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    add-int/lit8 v9, v0, 0x1

    invoke-static {p1, v9}, Lcom/samsung/android/glview/GLText;->getIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_8

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    :goto_1
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    add-int v0, v5, v1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    :cond_4
    int-to-float v9, v6

    cmpl-float v9, v9, p0

    if-lez v9, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_9

    add-int/lit8 v9, v0, -0x1

    invoke-static {p1, v9}, Lcom/samsung/android/glview/GLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_5

    add-int/lit8 v9, v0, 0x1

    if-lt v5, v9, :cond_6

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lcom/samsung/android/glview/GLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v9

    add-int v0, v5, v9

    add-int/lit8 v0, v0, -0x1

    :cond_6
    :goto_2
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_7
    :goto_3
    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_1

    :cond_9
    move v8, v0

    add-int/lit8 v9, v0, -0x1

    invoke-static {p1, v9}, Lcom/samsung/android/glview/GLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_a

    add-int/lit8 v9, v0, 0x1

    if-lt v5, v9, :cond_b

    :cond_a
    move v0, v8

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lcom/samsung/android/glview/GLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v9

    add-int v0, v5, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_c
    const/4 v9, -0x1

    if-eq v1, v9, :cond_d

    add-int/lit8 v9, v1, 0x1

    add-int/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_7

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLStringTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    return v0
.end method

.method public initSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mSizeSpecified:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->onAlphaUpdated()V

    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLStringTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->reset()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setAlign(II)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v1

    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v2, v4

    :cond_0
    :goto_0
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v1, v4

    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    packed-switch p2, :pswitch_data_1

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/glview/GLStringTexture;->setAlign(II)V

    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLStringTexture;->moveLayout(FF)V

    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :pswitch_0
    iput v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    goto :goto_2

    :pswitch_1
    sub-float v4, v3, v2

    div-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    goto :goto_2

    :pswitch_2
    sub-float v4, v3, v2

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iput v9, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    goto :goto_2

    :pswitch_3
    iput v7, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    goto :goto_3

    :pswitch_4
    sub-float v4, v0, v1

    div-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    goto :goto_3

    :pswitch_5
    sub-float v4, v0, v1

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    iput v9, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setBold(Z)V

    :cond_0
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLStringTexture;->setBoldColor(ZI)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setColor(I)V

    goto :goto_0
.end method

.method public setFadingEdge(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setFadingEdge(Z)V

    :cond_0
    return-void
.end method

.method public setFadingEdgeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setFadingEdgeWidth(F)V

    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setFontSize(F)V

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLStringTexture;->setHeight(F)V

    :cond_0
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLStringTexture;->setSize(FF)V

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :cond_0
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShaderParameter(F)V

    :cond_0
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShaderProgram(I)V

    :cond_0
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShaderStep(F)V

    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShadowColor(I)V

    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLStringTexture;->setShadowLayer(ZFFFI)V

    :cond_0
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLStringTexture;->setShadowOffset(FF)V

    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShadowRadius(F)V

    :cond_0
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShadowVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iput p2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLStringTexture;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setStroke(ZFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLStringTexture;->setStroke(ZFI)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setStrokeColor(I)V

    :cond_0
    return-void
.end method

.method public setStrokeVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setStrokeVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mSizeGiven:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    invoke-static {v0, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    if-eq v0, p3, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iput p3, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iput-object p1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v3, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLStringTexture;->setText(Ljava/lang/String;FI)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setTextScaleX(F)V

    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method public setWidth(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLStringTexture;->setWidth(F)V

    :cond_0
    return-void
.end method
