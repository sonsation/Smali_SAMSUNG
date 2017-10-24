.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 340
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 330
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x41

    if-gt v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-set0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    :cond_0
    if-lez p3, :cond_1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v4, 0x41

    const/4 v5, 0x0

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 309
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 310
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_1

    .line 311
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 317
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0cba

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get4(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/ScrollView;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 320
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 297
    :goto_2
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method
