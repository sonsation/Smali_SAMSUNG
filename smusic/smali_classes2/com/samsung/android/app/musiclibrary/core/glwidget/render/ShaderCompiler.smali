.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;
.super Ljava/lang/Object;
.source "ShaderCompiler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ShaderCompiler"

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDefines([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "defines"    # [Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v1, "res":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 138
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 139
    .local v0, "define":Ljava/lang/String;
    const-string v4, "#define "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "define":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static compile(Landroid/content/Context;[Ljava/lang/String;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defines"    # [Ljava/lang/String;
    .param p2, "vertexResource"    # I
    .param p3, "fragmentResource"    # I

    .prologue
    .line 52
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "vertex":Ljava/lang/String;
    invoke-static {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "fragment":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->compile([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static compile([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "defines"    # [Ljava/lang/String;
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    const v10, 0x8b81

    const/4 v9, 0x0

    .line 66
    const v6, 0x8b31

    invoke-static {v6}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v5

    .line 67
    .local v5, "vertexHandler":I
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->addDefines([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 68
    invoke-static {v5}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "compilationFailed":Z
    const/4 v6, 0x1

    new-array v2, v6, [I

    .line 71
    .local v2, "compiled":[I
    invoke-static {v5, v10, v2, v9}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 72
    aget v6, v2, v9

    if-nez v6, :cond_0

    .line 73
    invoke-static {v5}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "compileLog":Ljava/lang/String;
    const-string v6, "SMUSIC-ShaderCompiler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VertexShader compilation log: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x1

    .line 78
    .end local v1    # "compileLog":Ljava/lang/String;
    :cond_0
    const v6, 0x8b30

    invoke-static {v6}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    .line 79
    .local v3, "fragmentHandler":I
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->addDefines([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 80
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 82
    invoke-static {v3, v10, v2, v9}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 83
    aget v6, v2, v9

    if-nez v6, :cond_1

    .line 84
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1    # "compileLog":Ljava/lang/String;
    const-string v6, "SMUSIC-ShaderCompiler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FragmentShader compilation log: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x1

    .line 89
    .end local v1    # "compileLog":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unable to compile shader, check log for detail"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    .line 94
    .local v4, "handler":I
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 95
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 96
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 97
    return v4
.end method

.method public static loadShader(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 111
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->sTempTypedValue:Landroid/util/TypedValue;

    monitor-enter v6

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->sTempTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v5, p1, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 113
    .local v2, "is":Ljava/io/InputStream;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 116
    .local v0, "buffer":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v4, "str":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    const/16 v7, 0x400

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 118
    .local v3, "read":I
    :goto_0
    if-lez v3, :cond_0

    .line 119
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v0, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    const/16 v7, 0x400

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    goto :goto_0

    .line 113
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "read":I
    .end local v4    # "str":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 122
    .restart local v0    # "buffer":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "read":I
    .restart local v4    # "str":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 127
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 132
    .end local v0    # "buffer":[B
    .end local v3    # "read":I
    .end local v4    # "str":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 132
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 127
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 130
    :goto_3
    throw v5

    .line 128
    .restart local v0    # "buffer":[B
    .restart local v3    # "read":I
    .restart local v4    # "str":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v3    # "read":I
    .end local v4    # "str":Ljava/lang/StringBuilder;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_3
.end method
