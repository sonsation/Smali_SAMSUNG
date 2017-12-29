.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailContextualHighPriorityPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    return v0
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .locals 2
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "isUpdated"    # Z

    .prologue
    .line 43
    if-eqz p4, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-interface {v0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onDisableUpdatableCocktail(II)V

    .line 46
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "isUpdated"    # Z

    .prologue
    .line 35
    if-eqz p4, :cond_0

    .line 36
    const/4 v0, 0x1

    return v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .locals 2
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "userId"    # I
    .param p5, "isUpdated"    # Z

    .prologue
    .line 27
    if-nez p5, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-interface {v0, v1, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V

    .line 30
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v3, 0x0

    .line 51
    if-nez p1, :cond_0

    .line 52
    sget-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isMatchedPolicy: cocktail is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v3

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 56
    .local v0, "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 64
    :cond_1
    :pswitch_0
    return v3

    .line 61
    :pswitch_1
    const/4 v1, 0x1

    return v1

    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
