.class Lorg/brickred/socialauth/android/SocialAuthAdapter$1;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

.field final synthetic val$ctx:Landroid/content/Context;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->val$ctx:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "Share via"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 344
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 345
    const v5, 0x1080045

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 348
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$000(Lorg/brickred/socialauth/android/SocialAuthAdapter;)I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 349
    .local v4, "providerNames":[Ljava/lang/String;
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$000(Lorg/brickred/socialauth/android/SocialAuthAdapter;)I

    move-result v5

    new-array v3, v5, [I

    .line 351
    .local v3, "providerLogos":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$000(Lorg/brickred/socialauth/android/SocialAuthAdapter;)I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 352
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$100(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 353
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$200(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[I

    move-result-object v5

    aget v5, v5, v2

    aput v5, v3, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_0
    new-instance v5, Lorg/brickred/socialauth/android/ShareButtonAdapter;

    iget-object v6, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->val$ctx:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v3}, Lorg/brickred/socialauth/android/ShareButtonAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[I)V

    const/4 v6, 0x0

    new-instance v7, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;

    invoke-direct {v7, p0}, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$1;)V

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 376
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 377
    return-void
.end method
