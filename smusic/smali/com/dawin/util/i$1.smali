.class Lcom/dawin/util/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/util/i;


# direct methods
.method constructor <init>(Lcom/dawin/util/i;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dawin/util/a$a;)V
    .locals 3
    .param p1, "adinfo"    # Lcom/dawin/util/a$a;

    .prologue
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    const-string v1, "au"

    const-string v2, "N"

    invoke-static {v0, v1, v2}, Lcom/dawin/util/i;->a(Lcom/dawin/util/i;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dawin/util/i;->a(Lcom/dawin/util/i;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    const-string v1, "aid"

    iget-object v2, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dawin/util/i;->a(Lcom/dawin/util/i;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    const-string v1, "au"

    iget-object v2, p1, Lcom/dawin/util/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dawin/util/i;->a(Lcom/dawin/util/i;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    iget-object v1, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/dawin/util/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    iget-object v1, p1, Lcom/dawin/util/a$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/dawin/util/i;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dawin/util/i$1;->a:Lcom/dawin/util/i;

    const-string v1, "au"

    const-string v2, "N"

    invoke-static {v0, v1, v2}, Lcom/dawin/util/i;->a(Lcom/dawin/util/i;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
