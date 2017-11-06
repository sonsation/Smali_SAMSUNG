.class public Lcom/dawin/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/e$a;
.implements Lcom/dawin/util/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/d$a;,
        Lcom/dawin/util/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/dawin/util/d$b;

.field private d:Lcom/dawin/util/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/dawin/util/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/dawin/util/d;->a:Landroid/content/Context;

    const-string v1, "cache_path_new"

    invoke-static {v0, v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/util/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/icon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/dawin/util/d;->a:Landroid/content/Context;

    const-string v1, "cache_path_new"

    iget-object v2, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/dawin/util/d;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dawin/util/d;->a:Landroid/content/Context;

    const-string v1, "cache_path_new"

    invoke-static {v0, v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/dawin/util/d;)Lcom/dawin/util/d$a;
    .locals 1

    iget-object v0, p0, Lcom/dawin/util/d;->d:Lcom/dawin/util/d$a;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "iconFolder":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "folder do not exist, folder path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "folder exist, folder path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "bitmapUrlArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/dawin/util/e;

    iget-object v1, p0, Lcom/dawin/util/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/dawin/util/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .local v0, "task":Lcom/dawin/util/e;
    new-instance v1, Lcom/dawin/util/d$1;

    invoke-direct {v1, p0}, Lcom/dawin/util/d$1;-><init>(Lcom/dawin/util/d;)V

    invoke-virtual {v0, v1}, Lcom/dawin/util/e;->a(Lcom/dawin/util/e$a;)V

    invoke-virtual {v0}, Lcom/dawin/util/e;->a()V

    const/4 v1, 0x0

    return v1
.end method

.method public a(Lcom/dawin/util/d$a;)V
    .locals 0
    .param p1, "l"    # Lcom/dawin/util/d$a;

    .prologue
    iput-object p1, p0, Lcom/dawin/util/d;->d:Lcom/dawin/util/d$a;

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "requestedUrl"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/dawin/util/d;->c:Lcom/dawin/util/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/util/d;->c:Lcom/dawin/util/d$b;

    invoke-interface {v0, p1, p2}, Lcom/dawin/util/d$b;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/util/ArrayList;)V
    .locals 1
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "bitmapArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dawin/util/d;->d:Lcom/dawin/util/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/util/d;->d:Lcom/dawin/util/d$a;

    invoke-interface {v0, p2}, Lcom/dawin/util/d$a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/widget/ImageButton;
    .param p3, "isShowDirectly"    # Z

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "index":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_2

    invoke-virtual {p2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v4, Lcom/dawin/util/e;

    iget-object v6, p0, Lcom/dawin/util/d;->b:Ljava/lang/String;

    invoke-direct {v4, p1, v2, v6}, Lcom/dawin/util/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "task":Lcom/dawin/util/e;
    invoke-virtual {v4, p2, p3}, Lcom/dawin/util/e;->a(Landroid/widget/ImageButton;Z)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z
    .locals 6
    .param p1, "Base64String"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/widget/ImageButton;
    .param p3, "isShowDirectly"    # Z

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .local v1, "decodedString":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "decodedString":[B
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
