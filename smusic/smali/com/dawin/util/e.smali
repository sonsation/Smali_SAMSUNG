.class public Lcom/dawin/util/e;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/e$a;,
        Lcom/dawin/util/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageButton;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/dawin/util/e$b;

.field private k:Lcom/dawin/util/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "bitmapUrlArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/util/e;->g:Z

    iput-object p2, p0, Lcom/dawin/util/e;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/util/e;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "cachePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/dawin/util/e;->g:Z

    iput-object p1, p0, Lcom/dawin/util/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dawin/util/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dawin/util/e;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/dawin/util/e;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v9, "mUrl":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/16 v13, 0x1f4

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .local v12, "status":I
    :goto_0
    const/16 v13, 0xc8

    if-ne v12, v13, :cond_0

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v8, "inputStream":Ljava/io/InputStream;
    if-eqz v8, :cond_4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x400

    new-array v2, v13, [B

    .local v2, "buf":[B
    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/dawin/util/e;->d:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "cnt":I
    :goto_1
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .local v11, "response":[B
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v7, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v7, v11}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    const/4 v13, 0x1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v3    # "cnt":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "mUrl":Ljava/net/URL;
    .end local v11    # "response":[B
    .end local v12    # "status":I
    :goto_2
    return v13

    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "mUrl":Ljava/net/URL;
    .restart local v12    # "status":I
    :cond_0
    const/16 v13, 0x12e

    if-eq v12, v13, :cond_1

    const/16 v13, 0x12d

    if-ne v12, v13, :cond_2

    :cond_1
    const-string v13, "Location"

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "newUrl":Ljava/lang/String;
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    check-cast v4, Ljava/net/HttpURLConnection;

    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    goto :goto_0

    .end local v10    # "newUrl":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "cnt":I
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v3    # "cnt":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "mUrl":Ljava/net/URL;
    .end local v12    # "status":I
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v2, "mUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x1f4

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .local v5, "status":I
    :goto_0
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "mUrl":Ljava/net/URL;
    .end local v5    # "status":I
    :cond_0
    :goto_1
    return-object v3

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "mUrl":Ljava/net/URL;
    .restart local v5    # "status":I
    :cond_1
    const/16 v6, 0x12e

    if-eq v5, v6, :cond_2

    const/16 v6, 0x12d

    if-ne v5, v6, :cond_0

    :cond_2
    const-string v6, "Location"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "newUrl":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "mUrl":Ljava/net/URL;
    .end local v4    # "newUrl":Ljava/lang/String;
    .end local v5    # "status":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "ret":Z
    iget-boolean v6, p0, Lcom/dawin/util/e;->g:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startDownloadTask for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/dawin/util/e;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "url : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/dawin/util/e;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", filename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/dawin/util/e;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dawin/util/e;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/dawin/util/e;->b:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/dawin/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v6, p0, Lcom/dawin/util/e;->j:Lcom/dawin/util/e$b;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/dawin/util/e;->j:Lcom/dawin/util/e$b;

    iget-object v7, p0, Lcom/dawin/util/e;->a:Ljava/lang/String;

    invoke-interface {v6, v3, v7}, Lcom/dawin/util/e$b;->a(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :cond_1
    const-string v6, "bitmap download task start"

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/dawin/util/e;->i:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/dawin/util/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bitmap array count : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/dawin/util/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/dawin/util/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " bitmap download ----------------------------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/dawin/util/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dawin/util/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/dawin/util/e;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "img":Landroid/graphics/Bitmap;
    const-string v6, "--"

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dawin/util/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "width : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Lcom/dawin/util/CommonUtils;->a(II)I

    move-result v2

    .local v2, "max":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int v4, v6, v2

    .local v4, "x":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int v5, v6, v2

    .local v5, "y":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " image."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " bitmap put in array complete"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    .end local v2    # "max":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v0    # "i":I
    .end local v1    # "img":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dawin/util/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Landroid/widget/ImageButton;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "isShowDirectly"    # Z

    .prologue
    iput-object p1, p0, Lcom/dawin/util/e;->e:Landroid/widget/ImageButton;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/dawin/util/e;->e:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dawin/util/e;->c:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/dawin/util/e;->f:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dawin/util/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/dawin/util/e$a;)V
    .locals 0
    .param p1, "l"    # Lcom/dawin/util/e$a;

    .prologue
    iput-object p1, p0, Lcom/dawin/util/e;->k:Lcom/dawin/util/e$a;

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finish Download Task for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/util/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dawin/util/e;->isCancelled()Z

    iget-boolean v2, p0, Lcom/dawin/util/e;->g:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dawin/util/e;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    const-string v2, "Button reference not null!!"

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/util/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .local v1, "button":Landroid/widget/ImageButton;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dawin/util/e;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/util/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v2, p0, Lcom/dawin/util/e;->f:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const-string v2, "Button visible"

    invoke-static {v2}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "button":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Button reference null!!"

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "------------------------------Bitmap download finished"

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/util/e;->k:Lcom/dawin/util/e$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dawin/util/e;->k:Lcom/dawin/util/e$a;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/dawin/util/e;->i:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/dawin/util/e$a;->a(ZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/util/e;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dawin/util/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
