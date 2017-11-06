.class Lcom/samsung/android/app/music/list/ListDeleteableImpl$1;
.super Ljava/lang/Object;
.source "ListDeleteableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListDeleteableImpl;->deleteItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/ListDeleteableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I[J)V
    .locals 2
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->access$000(Lcom/samsung/android/app/music/list/ListDeleteableImpl;[J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->access$100(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->deleteItemsInternal(Landroid/app/Activity;[J)V

    .line 73
    :cond_0
    return-void
.end method
