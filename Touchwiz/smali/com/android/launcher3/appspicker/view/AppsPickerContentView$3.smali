.class Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;
.super Ljava/lang/Object;
.source "AppsPickerContentView.java"

# interfaces
.implements Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setupIndexScrollView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChanged(I)V
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChineseHK()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public onPressed(F)V
    .locals 0
    .param p1, "sectionIndex"    # F

    .prologue
    .line 162
    return-void
.end method

.method public onReleased(F)V
    .locals 0
    .param p1, "sectionIndex"    # F

    .prologue
    .line 167
    return-void
.end method
