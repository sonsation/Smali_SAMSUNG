.class Lcom/dawin/util/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/util/d;->a(Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/util/d;


# direct methods
.method constructor <init>(Lcom/dawin/util/d;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/util/d$1;->a:Lcom/dawin/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/dawin/util/d$1;->a:Lcom/dawin/util/d;

    invoke-static {v0}, Lcom/dawin/util/d;->a(Lcom/dawin/util/d;)Lcom/dawin/util/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/util/d$1;->a:Lcom/dawin/util/d;

    invoke-static {v0}, Lcom/dawin/util/d;->a(Lcom/dawin/util/d;)Lcom/dawin/util/d$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/dawin/util/d$a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
