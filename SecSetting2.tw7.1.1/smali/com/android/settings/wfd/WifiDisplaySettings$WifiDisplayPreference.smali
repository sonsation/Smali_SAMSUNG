.class final Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayPreference"
.end annotation


# instance fields
.field private mDeviceType:I

.field private final mDisplay:Landroid/hardware/display/SemWifiDisplay;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/SemWifiDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const v9, 0x7f0b110a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2215
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 2216
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2195
    const/16 v6, 0x10

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    .line 2217
    const/4 v3, 0x0

    .line 2219
    .local v3, "tokens":[Ljava/lang/String;
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 2220
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v6}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2221
    const v6, 0x7f04037e

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setLayoutResource(I)V

    .line 2223
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2224
    invoke-virtual {p3}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v6

    if-eq v6, v4, :cond_0

    invoke-virtual {p3}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    :cond_0
    move v1, v4

    .line 2225
    .local v1, "isSupportScreenSharing":Z
    :goto_0
    if-nez v1, :cond_1

    .line 2226
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1109

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2227
    .local v2, "summaryText":Landroid/text/Spannable;
    if-eqz v2, :cond_1

    .line 2228
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d024f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {v2, v6, v5, v7, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2229
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2233
    .end local v2    # "summaryText":Landroid/text/Spannable;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v6}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2234
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v6}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2235
    .local v3, "tokens":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lt v6, v4, :cond_2

    .line 2236
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    .line 2237
    iget v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    if-lt v5, v4, :cond_2

    iget v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    if-ge v4, v11, :cond_2

    .line 2238
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    iget v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2239
    iget v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    if-ne v4, v10, :cond_2

    .line 2240
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2246
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getIconIdx()I

    move-result v0

    .line 2247
    .local v0, "displayIconIdx":I
    xor-int/lit16 v4, v0, 0x900

    if-eqz v4, :cond_3

    xor-int/lit16 v4, v0, 0x901

    if-nez v4, :cond_6

    .line 2248
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v4, v4, v10

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2264
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "#252525"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2215
    return-void

    .end local v0    # "displayIconIdx":I
    .end local v1    # "isSupportScreenSharing":Z
    .local v3, "tokens":[Ljava/lang/String;
    :cond_5
    move v1, v5

    .line 2224
    goto/16 :goto_0

    .line 2249
    .end local v3    # "tokens":[Ljava/lang/String;
    .restart local v0    # "displayIconIdx":I
    .restart local v1    # "isSupportScreenSharing":Z
    :cond_6
    const v4, 0xff00

    and-int/2addr v4, v0

    const/16 v5, 0x700

    if-ne v4, v5, :cond_4

    .line 2250
    xor-int/lit16 v4, v0, 0x701

    if-nez v4, :cond_7

    .line 2251
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2252
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2253
    :cond_7
    xor-int/lit16 v4, v0, 0x702

    if-nez v4, :cond_8

    .line 2254
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2255
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2256
    :cond_8
    xor-int/lit16 v4, v0, 0x704

    if-nez v4, :cond_9

    .line 2257
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto :goto_1

    .line 2259
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v4, v4, v11

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2260
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2195
    :array_0
    .array-data 4
        0x7f020699
        0x7f020691
        0x7f02069b
        0x7f02068d
        0x7f0206a5
        0x7f020697
        0x7f0206a8
        0x7f0206a3
        0x7f020690
        0x7f020694
        0x7f020692
        0x7f0202c1
        0x7f0202ba
        0x7f0202c2
        0x7f0202b6
        0x7f0202b7
    .end array-data
.end method


# virtual methods
.method public getDisplay()Landroid/hardware/display/SemWifiDisplay;
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2274
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 2275
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2276
    .local v1, "deviceName":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 2277
    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "onBindView can\'t find device name."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    return-void

    .line 2281
    :cond_0
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2282
    .local v2, "icon":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 2283
    const v3, 0x7f0202ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2286
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v3, v3, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 2287
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v3, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2288
    const v3, -0xff5f32

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2273
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap15(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V

    .line 2293
    return-void
.end method