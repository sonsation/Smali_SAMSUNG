.class Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;
.super Landroid/os/AsyncTask;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/ZeroPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZeroPagePreviewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p2, "x1"    # Lcom/android/launcher3/home/ZeroPageController$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 224
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3, v1}, Lcom/android/launcher3/home/ZeroPageController;->access$200(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 226
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3, v0}, Lcom/android/launcher3/home/ZeroPageController;->access$300(Lcom/android/launcher3/home/ZeroPageController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    new-instance v4, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v4, v0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->access$402(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/common/drawable/FastBitmapDrawable;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 238
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 229
    :cond_1
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZeroPreviewTask: doInBackground() : bitmap not found for app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$500(Lcom/android/launcher3/home/ZeroPageController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    .line 233
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/home/ZeroPageController;->access$600(Lcom/android/launcher3/home/ZeroPageController;Ljava/lang/String;)I

    move-result v4

    .line 232
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 234
    .local v2, "preview":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3, v2}, Lcom/android/launcher3/home/ZeroPageController;->access$300(Lcom/android/launcher3/home/ZeroPageController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    new-instance v4, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v4, v2}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->access$402(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/common/drawable/FastBitmapDrawable;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    goto :goto_0
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelled ZeroPreviewTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 15
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 248
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ZeroPreviewTask onPostExecute()"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 250
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$400(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 251
    new-instance v2, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$400(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v4, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v4, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 292
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 258
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 259
    .local v9, "res":Landroid/content/res/Resources;
    const/high16 v12, 0x42c80000    # 100.0f

    const v13, 0x7f0b0003

    .line 260
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-float v13, v13

    div-float v7, v12, v13

    .line 261
    .local v7, "overviewShrinkFactor":F
    const v12, 0x7f0a00bc

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v11, v12

    .line 263
    .local v11, "zeroPageSwitchHeight":I
    const v12, 0x7f0a01b4

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 264
    .local v5, "margin":I
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 265
    .local v6, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int v12, v5, v11

    invoke-virtual {v6, v5, v12, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 266
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 269
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 270
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 271
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    .line 273
    :try_start_0
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$800(Lcom/android/launcher3/home/ZeroPageController;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 274
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 275
    new-instance v3, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 276
    .local v3, "iv":Landroid/widget/ImageView;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 285
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "iv":Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "application info load failed : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 280
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    new-instance v10, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 281
    .local v10, "tv":Landroid/widget/TextView;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v12, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v12}, Lcom/android/launcher3/home/ZeroPageController;->access$700(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
