.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailContextualPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;->TAG:Ljava/lang/String;

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
    const/4 v0, 0x2

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
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

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
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "userId"    # I
    .param p5, "isUpdated"    # Z

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 29
    if-eqz p5, :cond_0

    .line 30
    return v2

    .line 32
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-interface {v0, v1, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V

    .line 36
    return v2
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/high16 v5, 0x10000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 60
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;->TAG:Ljava/lang/String;

    const-string v3, "isMatchedPolicy: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v4

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    .line 64
    .local v1, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 65
    .local v0, "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v1, :cond_3

    .line 66
    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_1

    .line 69
    return v3

    .line 71
    :cond_1
    return v4

    .line 74
    :cond_2
    return v3

    .line 77
    :cond_3
    return v4
.end method
