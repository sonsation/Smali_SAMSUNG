.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 8149
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 8151
    const-string/jumbo v3, "CoverUI"

    const-string/jumbo v6, "updateCoverWindow() START"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8153
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap3(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    move-result v0

    .line 8154
    .local v0, "coverDismissed":Z
    const-string/jumbo v3, "CoverUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverWindow(): keyguard dismissed for cover: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8156
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8157
    const/16 v1, 0x8

    .line 8158
    .local v1, "naviBarVis":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v3, v5, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 8159
    const/16 v1, 0x8

    .line 8167
    :goto_0
    const-string/jumbo v3, "CoverUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting NavigationBar visibility to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8168
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    .line 8171
    .end local v1    # "naviBarVis":I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-nez v3, :cond_e

    .line 8172
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    invoke-virtual {v3, v6, v7, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setCoverShowing(ZZI)V

    .line 8178
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 8182
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8183
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 8186
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 8191
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get54(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8192
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get54(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    .line 8191
    if-eqz v3, :cond_4

    .line 8192
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get54(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 8202
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f1303fd

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 8203
    .local v2, "previewContainerCover":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 8204
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_5
    move v3, v5

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8205
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 8208
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 8209
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f130418

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8210
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f130421

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8213
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap35(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V

    .line 8216
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v7

    invoke-virtual {v3, v6, v7, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 8217
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 8218
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(I)V

    .line 8221
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get54(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    .line 8234
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 8235
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8238
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarController:Lcom/android/systemui/statusbar/phone/LightStatusBarController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->updateCoverState(ZZ)V

    .line 8239
    const-string/jumbo v3, "CoverUI"

    const-string/jumbo v4, "updateCoverWindow(): END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8150
    return-void

    .line 8161
    .end local v2    # "previewContainerCover":Landroid/view/View;
    .restart local v1    # "naviBarVis":I
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get53(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    if-eq v3, v10, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get53(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    if-ne v3, v9, :cond_d

    .line 8162
    :cond_c
    const/16 v1, 0x8

    .line 8161
    goto/16 :goto_0

    .line 8164
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 8174
    .end local v1    # "naviBarVis":I
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setCoverShowing(ZZI)V

    goto/16 :goto_1

    .line 8179
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 8184
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap30(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_3

    .line 8193
    :cond_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get55(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    .line 8191
    if-eqz v3, :cond_4

    .line 8196
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap29(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 8197
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto/16 :goto_4

    .restart local v2    # "previewContainerCover":Landroid/view/View;
    :cond_12
    move v3, v4

    .line 8204
    goto/16 :goto_5

    .line 8224
    :cond_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f130418

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8225
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f130421

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8228
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap35(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V

    .line 8230
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v6

    invoke-virtual {v3, v4, v6, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 8231
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(I)V

    goto/16 :goto_6
.end method
