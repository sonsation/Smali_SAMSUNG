.class Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl$1;
.super Ljava/lang/Object;
.source "SelectedItemPlayableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl$1;->this$0:Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I[J)V
    .locals 4
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "result":I
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl$1;->this$0:Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->access$000(Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl$1;->this$0:Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->access$000(Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getKeyword()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(ILjava/lang/String;[JI)V

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl$1;->this$0:Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->onResult(I)V

    .line 45
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
