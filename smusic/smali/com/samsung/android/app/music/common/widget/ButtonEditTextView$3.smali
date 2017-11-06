.class Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;
.super Landroid/text/InputFilter$LengthFilter;
.source "ButtonEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    .param p2, "x0"    # I

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 264
    const/4 v3, 0x0

    .line 268
    .local v3, "result":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$200(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getInputType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "input":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "[\\d]+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    .line 274
    .end local v1    # "input":Ljava/lang/String;
    .local v0, "errorCondition":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 275
    or-int/lit8 v3, v3, 0x2

    .line 279
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 280
    .local v4, "rst":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    .line 281
    or-int/lit8 v3, v3, 0x1

    .line 284
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 285
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v3, :cond_4

    .line 286
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$600(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$600(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 288
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$702(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;I)I

    .line 302
    .end local p1    # "source":Ljava/lang/CharSequence;
    :goto_1
    return-object p1

    .line 270
    .end local v0    # "errorCondition":Z
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v4    # "rst":Ljava/lang/CharSequence;
    .restart local v1    # "input":Ljava/lang/String;
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    .end local v1    # "input":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/EmojiListUtils;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v0

    .restart local v0    # "errorCondition":Z
    goto :goto_0

    .line 290
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v4    # "rst":Ljava/lang/CharSequence;
    :cond_4
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_6

    .line 291
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$700(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 292
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$600(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v5

    const v6, 0x7f0a00d2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$702(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;I)I

    .line 295
    :cond_5
    invoke-interface/range {p4 .. p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 297
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$700(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    .line 298
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$600(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v5

    const v6, 0x7f0a00ef

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 299
    invoke-static {v9}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$800(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$702(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;I)I

    :cond_7
    move-object p1, v4

    .line 302
    goto :goto_1
.end method
