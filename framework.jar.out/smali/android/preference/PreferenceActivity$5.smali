.class Landroid/preference/PreferenceActivity$5;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 820
    iput-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 824
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 825
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x0

    .line 830
    .local v0, "mRightLayoutStartPosition":F
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get6(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get3(Landroid/preference/PreferenceActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v0

    .line 838
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 839
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v0, v2

    .line 840
    .local v1, "x":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 841
    const/4 v1, 0x0

    .line 843
    :cond_1
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 844
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    .line 823
    .end local v1    # "x":F
    :cond_2
    return-void

    .line 834
    :cond_3
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get8(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_0
.end method
