.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;
.super Ljava/lang/Object;
.source "PickDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 2
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$102(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;I)I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/common/model/PickInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/common/model/PickInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/PickInfo;->isFavorite()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;Z)V

    .line 141
    :cond_0
    return-void
.end method
