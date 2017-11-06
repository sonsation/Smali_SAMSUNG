.class public Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "MilkLocalOnlyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;-><init>()V

    .line 26
    .local v0, "dialog":Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;
    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0400f1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->dismiss()V

    .line 67
    return-void

    .line 60
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x7f1202c6
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    new-instance v3, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f035d

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    .local v3, "ret":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 39
    const v4, 0x7f0400f1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->updateAttribute(Landroid/app/Dialog;)V

    .line 41
    const v4, 0x7f1202c6

    .line 42
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, "gotoSamsungSetting":Landroid/widget/TextView;
    const v4, 0x7f1202c8

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .local v1, "cancel":Landroid/widget/ImageView;
    const v4, 0x7f1202c7

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .local v0, "arrow":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f110142

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 46
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 49
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 51
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-object v3
.end method

.method protected updateAttribute(Landroid/app/Dialog;)V
    .locals 10
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 71
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 72
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0555

    .line 76
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 79
    .local v4, "topMargin":I
    invoke-virtual {v7}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getMarginTop(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getMarginBottom(Landroid/content/Context;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v2, v8

    .line 80
    .local v2, "heightMargin":F
    invoke-virtual {v7}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getHorizontalMargin(Landroid/content/Context;)I

    move-result v8

    int-to-float v6, v8

    .line 82
    .local v6, "widthMargin":F
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 83
    .local v1, "height":I
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0554

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_0

    .line 89
    int-to-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 92
    :cond_0
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 93
    const/16 v8, 0x31

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    return-void
.end method
