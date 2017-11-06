.class Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$1;
.super Ljava/lang/Object;
.source "SpinnerHelper.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setEnabled(Z)V

    .line 69
    return-void
.end method
