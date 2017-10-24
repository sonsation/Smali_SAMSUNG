.class Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setupDetailView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-wrap1(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    .line 292
    return-void

    .line 294
    :cond_0
    rsub-int/lit8 v0, p3, 0x2

    .line 295
    .local v0, "soundProfile":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile;IZ)V

    .line 296
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_TEMPORARY_MUTE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    .line 289
    :cond_1
    return-void
.end method
