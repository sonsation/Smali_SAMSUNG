.class Lcom/dawin/DawinVideoAd$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/DawinVideoAd$4;

.field private final synthetic b:Lcom/dawin/objects/c;


# direct methods
.method constructor <init>(Lcom/dawin/DawinVideoAd$4;Lcom/dawin/objects/c;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$4$1;->a:Lcom/dawin/DawinVideoAd$4;

    iput-object p2, p0, Lcom/dawin/DawinVideoAd$4$1;->b:Lcom/dawin/objects/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$4$1;->b:Lcom/dawin/objects/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dawin/objects/c;->setVisibility(I)V

    return-void
.end method
