.class Lcom/dawin/objects/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/objects/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/objects/c;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dawin/objects/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/objects/c$3;->a:Lcom/dawin/objects/c;

    iput-object p2, p0, Lcom/dawin/objects/c$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/c$3;->a:Lcom/dawin/objects/c;

    invoke-static {v0}, Lcom/dawin/objects/c;->a(Lcom/dawin/objects/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/objects/c$3;->a:Lcom/dawin/objects/c;

    invoke-static {v1}, Lcom/dawin/objects/c;->b(Lcom/dawin/objects/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dawin/objects/c$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
