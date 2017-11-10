.class public Lcom/samsung/android/glview/GLProgram;
.super Ljava/lang/Object;
.source "GLProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLProgram$NameIndexerObj;
    }
.end annotation


# static fields
.field public static final INDEXER_ALPHA:Ljava/lang/String; = "u_alpha"

.field public static final INDEXER_FILL_COLOR:Ljava/lang/String; = "fill_color"

.field public static final INDEXER_MVPMATRIX:Ljava/lang/String; = "u_MVPMatrix"

.field public static final INDEXER_PARAMETER:Ljava/lang/String; = "u_param"

.field public static final INDEXER_POINTSIZE:Ljava/lang/String; = "a_pointsize"

.field public static final INDEXER_SAMPLER:Ljava/lang/String; = "tex_sampler"

.field public static final INDEXER_STEP:Ljava/lang/String; = "u_step"

.field public static final INDEXER_TEXCOORD:Ljava/lang/String; = "a_texcoord"

.field public static final INDEXER_THICKNESS:Ljava/lang/String; = "u_thickness"

.field public static final INDEXER_TYPE:Ljava/lang/String; = "u_type"

.field public static final INDEXER_VERTEX:Ljava/lang/String; = "a_position"

.field public static final QUALIFIER_ATTRIBUTE:I = 0x66

.field public static final QUALIFIER_CONST:I = 0x65

.field public static final QUALIFIER_UNIFORM:I = 0x67

.field public static final QUALIFIER_VARYING:I = 0x68

.field public static final TYPE_BOOL:I = 0xca

.field public static final TYPE_BVEC2:I = 0xd0

.field public static final TYPE_BVEC3:I = 0xd1

.field public static final TYPE_BVEC4:I = 0xd2

.field public static final TYPE_FLOAT:I = 0xcc

.field public static final TYPE_INT:I = 0xcb

.field public static final TYPE_IVEC2:I = 0xd3

.field public static final TYPE_IVEC3:I = 0xd4

.field public static final TYPE_IVEC4:I = 0xd5

.field public static final TYPE_MAT2:I = 0xd6

.field public static final TYPE_MAT3:I = 0xd7

.field public static final TYPE_MAT4:I = 0xd8

.field public static final TYPE_SAMPLER2D:I = 0xd9

.field public static final TYPE_SAMPLERCUBE:I = 0xdb

.field public static final TYPE_SAMPLER_EXTERNAL:I = 0xda

.field public static final TYPE_VEC2:I = 0xcd

.field public static final TYPE_VEC3:I = 0xce

.field public static final TYPE_VEC4:I = 0xcf

.field public static final TYPE_VOID:I = 0xc9


# instance fields
.field private final mNameIndexerObjMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/glview/GLProgram$NameIndexerObj;",
            ">;"
        }
    .end annotation
.end field

.field private mProgram:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLProgram;->mNameIndexerObjMap:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/glview/GLProgram;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const v6, 0x8b31

    invoke-direct {p0, v6, p1}, Lcom/samsung/android/glview/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    const v6, 0x8b30

    invoke-direct {p0, v6, p2}, Lcom/samsung/android/glview/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v6, "glAttachShader"

    invoke-direct {p0, v6}, Lcom/samsung/android/glview/GLProgram;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v6, "glAttachShader"

    invoke-direct {p0, v6}, Lcom/samsung/android/glview/GLProgram;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v4, v7, [I

    const v6, 0x8b82

    invoke-static {v1, v6, v4, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v5, v4, v5

    if-eq v5, v7, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not link program: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x8b81

    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v3, v0, v4

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return v1
.end method


# virtual methods
.method public addNameIndexer(Ljava/lang/String;II)Z
    .locals 2

    iget v1, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    invoke-direct {v0}, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;-><init>()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLProgram;->mNameIndexerObjMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1
    return v1

    :pswitch_0
    iget v1, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgram;->mNameIndexerObjMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    return-object v0
.end method

.method public getProgramID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    return v0
.end method

.method public release()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgram;->mNameIndexerObjMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method
