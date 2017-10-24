.class final Lcom/android/server/policy/GlobalActions$UIUpdateHandler;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 6058
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 6061
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 6060
    :cond_0
    :goto_0
    return-void

    .line 6063
    :pswitch_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get36(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 6143
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 6144
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 6148
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-nez v15, :cond_3

    .line 6149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 6150
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 6163
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 6164
    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 6166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-set4(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 6167
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    .line 6168
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    .line 6169
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set19(Z)Z

    .line 6170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-set11(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 6171
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get33()Z

    move-result v15

    if-nez v15, :cond_4

    .line 6172
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set10(Z)Z

    .line 6176
    :cond_4
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get34()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get33()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 6177
    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6178
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set10(Z)Z

    .line 6179
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set9(Z)Z

    .line 6180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 6181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 6183
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap19(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    .line 6064
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6065
    const/4 v10, 0x0

    .line 6066
    .local v10, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 6067
    .local v6, "ll":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 6070
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v15

    const v16, 0x10203c6

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "ll":Landroid/widget/LinearLayout;
    check-cast v6, Landroid/widget/LinearLayout;

    .line 6073
    .local v6, "ll":Landroid/widget/LinearLayout;
    :goto_3
    const/4 v2, 0x0

    .end local v10    # "view":Landroid/view/View;
    .local v2, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_c

    .line 6074
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 6075
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 6076
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6083
    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    .line 6084
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 6073
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6068
    .end local v2    # "i":I
    .local v6, "ll":Landroid/widget/LinearLayout;
    .restart local v10    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get24(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-result-object v15

    const v16, 0x10203c6

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "ll":Landroid/widget/LinearLayout;
    check-cast v6, Landroid/widget/LinearLayout;

    .local v6, "ll":Landroid/widget/LinearLayout;
    goto :goto_3

    .line 6079
    .end local v10    # "view":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 6080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .local v10, "view":Landroid/view/View;
    goto :goto_5

    .line 6088
    .end local v10    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->requestUpdateWindowBlur(F)V

    .line 6090
    if-eqz v6, :cond_f

    .line 6091
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 6092
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 6093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 6096
    :cond_d
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-nez v15, :cond_e

    .line 6097
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 6098
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 6099
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->dismiss()V

    .line 6104
    :cond_e
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    new-instance v16, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;-><init>(Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6132
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_10

    .line 6133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 6135
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_11

    .line 6136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 6138
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_0

    .line 6139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 6145
    .end local v2    # "i":I
    .end local v6    # "ll":Landroid/widget/LinearLayout;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    .line 6151
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->dismiss()V

    .line 6152
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get71()Z

    move-result v15

    if-nez v15, :cond_14

    .line 6153
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get68()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 6154
    const/16 v16, 0x0

    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/GlobalActions;->-set18(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    goto/16 :goto_2

    .line 6153
    :catchall_0
    move-exception v16

    monitor-exit v15

    throw v16

    .line 6157
    :cond_14
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set20(Z)Z

    goto/16 :goto_2

    .line 6193
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 6200
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_15

    .line 6201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 6203
    :cond_15
    sget-object v15, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-eqz v15, :cond_0

    .line 6204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get57(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_0

    .line 6210
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 6212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap19(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    .line 6216
    :pswitch_4
    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v15

    if-eqz v15, :cond_16

    .line 6218
    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeOn.updateState"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 6220
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 6221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/android/server/policy/GlobalActions;->-wrap31(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 6224
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6225
    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 6230
    :pswitch_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 6231
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v15, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6232
    const-string/jumbo v15, "suppressCoverUI"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6233
    const-string/jumbo v15, "miniModeUI"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6234
    const-string/jumbo v16, "sender"

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6241
    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6244
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_18

    .line 6245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 6246
    .local v11, "viewLand1":Landroid/view/View;
    sget-object v15, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v15, v11}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 6247
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 6248
    .local v13, "viewPort1":Landroid/view/View;
    const v15, 0x10203d9

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 6249
    .local v3, "imageFrameLayout":Landroid/widget/FrameLayout;
    const v15, 0x102000b

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 6250
    .local v7, "messageView":Landroid/widget/TextView;
    const v15, 0x10203d7

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 6251
    .local v9, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 6252
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v13, v0}, Lcom/android/server/policy/GlobalActions;->-wrap26(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .line 6244
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v7    # "messageView":Landroid/widget/TextView;
    .end local v9    # "statusView":Landroid/widget/TextView;
    .end local v13    # "viewPort1":Landroid/view/View;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6255
    .end local v11    # "viewLand1":Landroid/view/View;
    :cond_18
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 6256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v15

    const-string/jumbo v16, "HideConfirmLandscape"

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 6257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap20(Lcom/android/server/policy/GlobalActions;)V

    .line 6259
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    goto/16 :goto_0

    .line 6264
    .end local v2    # "i":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6267
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_1a

    .line 6268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 6269
    .local v14, "viewPort2":Landroid/view/View;
    sget-object v15, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 6270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6271
    .local v12, "viewLand2":Landroid/view/View;
    const v15, 0x10203d9

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 6272
    .restart local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    const v15, 0x102000b

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 6273
    .restart local v7    # "messageView":Landroid/widget/TextView;
    const v15, 0x10203d7

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 6274
    .restart local v9    # "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 6275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v12, v0}, Lcom/android/server/policy/GlobalActions;->-wrap25(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .line 6267
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v7    # "messageView":Landroid/widget/TextView;
    .end local v9    # "statusView":Landroid/widget/TextView;
    .end local v12    # "viewLand2":Landroid/view/View;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6278
    .end local v14    # "viewPort2":Landroid/view/View;
    :cond_1a
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 6279
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v15

    const-string/jumbo v16, "HideConfirmPortrait"

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 6280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap21(Lcom/android/server/policy/GlobalActions;)V

    .line 6282
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    goto/16 :goto_0

    .line 6287
    .end local v2    # "i":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-wrap24(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    .line 6292
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-wrap23(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    .line 6298
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6299
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_0

    .line 6300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 6301
    .local v8, "selected":Landroid/view/View;
    const v15, 0x1020006

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 6302
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sget v16, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 6303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v8, v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap17(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    .line 6299
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6310
    .end local v2    # "i":I
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "selected":Landroid/view/View;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 6311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    sget v16, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-wrap18(Lcom/android/server/policy/GlobalActions;I)V

    goto/16 :goto_0

    .line 6061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
