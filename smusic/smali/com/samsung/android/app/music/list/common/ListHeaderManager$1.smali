.class Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$500(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$600(Lcom/samsung/android/app/music/list/common/ListHeaderManager;Z)V

    .line 131
    :cond_0
    return-void
.end method
