.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailNativePolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x5

    return v0
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .locals 2
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "isUpdated"    # Z

    .prologue
    .line 50
    if-eqz p4, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-interface {v0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onDisableUpdatableCocktail(II)V

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "isUpdated"    # Z

    .prologue
    .line 42
    if-eqz p4, :cond_0

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "userId"    # I
    .param p5, "isUpdated"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 29
    .local v0, "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-interface {v1, v2, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V

    .line 32
    return v4

    .line 34
    :cond_0
    if-eqz p5, :cond_1

    .line 35
    return v4

    .line 37
    :cond_1
    return v3
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v3, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 60
    sget-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;->TAG:Ljava/lang/String;

    const-string v2, "isMatchedPolicy: cocktail is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v3

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 64
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_1

    .line 65
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v1, :sswitch_data_0

    .line 72
    :cond_1
    return v3

    .line 69
    :sswitch_0
    const/4 v1, 0x1

    return v1

    nop

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
