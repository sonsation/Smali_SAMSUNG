.class Lcom/samsung/android/app/music/list/ListShareableImpl$1;
.super Ljava/lang/Object;
.source "ListShareableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListShareableImpl;->share()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/ListShareableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/ListShareableImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/ListShareableImpl;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I[J)V
    .locals 3
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;->access$000(Lcom/samsung/android/app/music/list/ListShareableImpl;[J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListShareableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/ListShareableImpl;->access$100(Lcom/samsung/android/app/music/list/ListShareableImpl;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListShareableImpl;

    .line 56
    invoke-static {v2}, Lcom/samsung/android/app/music/list/ListShareableImpl;->access$200(Lcom/samsung/android/app/music/list/ListShareableImpl;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v0, v1, p2, v2}, Lcom/samsung/android/app/music/list/ListShareableImpl;->access$300(Lcom/samsung/android/app/music/list/ListShareableImpl;Landroid/content/Context;[JLjava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$1;->this$0:Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/ListShareableImpl;->setBixbyCrossSharePackages(Ljava/lang/String;)V

    .line 59
    return-void
.end method
