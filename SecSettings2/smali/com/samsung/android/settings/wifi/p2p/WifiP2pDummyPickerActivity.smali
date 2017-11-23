.class public final Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;
.super Landroid/app/Activity;
.source "WifiP2pDummyPickerActivity.java"


# instance fields
.field blankLayout:Landroid/widget/LinearLayout;

.field center:Landroid/widget/RelativeLayout;

.field private isTablet:Z

.field left:Landroid/widget/RelativeLayout;

.field private mIsGrandeDisplay:Z

.field private mIsLandscape:Z

.field right:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    .line 63
    return-void
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const-string/jumbo v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 192
    .local v5, "wm":Landroid/view/WindowManager;
    const/4 v4, 0x0

    .line 195
    .local v4, "maxWidth":I
    :try_start_0
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 196
    .local v0, "display":Landroid/view/Display;
    const-class v6, Landroid/view/Display;

    const-string/jumbo v7, "getRawWidth"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 198
    .local v2, "getRawW":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 206
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "getRawW":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 202
    .local v3, "matrix":Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 204
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private setGrandeDisplayView(Z)V
    .locals 12
    .param p1, "land"    # Z

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 144
    const v6, 0x7f11081b

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    .line 145
    const v6, 0x7f11081c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    .line 146
    const v6, 0x7f11081f

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    .line 147
    const v6, 0x7f11081d

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    .line 149
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 150
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 151
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 153
    if-eqz p1, :cond_1

    .line 154
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 155
    .local v2, "leftParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 156
    .local v4, "rightParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v0, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 158
    .local v0, "centerParams":Landroid/widget/LinearLayout$LayoutParams;
    const-string/jumbo v6, "@android:style/Theme.DeviceDefault.Light"

    const-string/jumbo v7, "Theme.DeviceDefault.Light"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020581

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020583

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .end local v0    # "centerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "leftParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "rightParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    return-void

    .line 162
    .restart local v0    # "centerParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "leftParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "rightParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020580

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020582

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 170
    .end local v0    # "centerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "leftParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "rightParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v3, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x9

    invoke-virtual {v3, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v5, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 174
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getDisplayWidth(Landroid/content/Context;)I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-direct {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v1, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x400

    .line 122
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    .line 125
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v0, :cond_1

    .line 126
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setGrandeDisplayView(Z)V

    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    if-nez v0, :cond_2

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 137
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    return-void

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v0, 0x1

    .line 87
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setUiOptions(I)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f040371

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setContentView(I)V

    .line 94
    const-string/jumbo v1, "grande"

    const-string/jumbo v2, "ro.build.scafe.size"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v0, :cond_0

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setGrandeDisplayView(Z)V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 85
    :cond_2
    return-void

    .line 95
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    return-void
.end method
