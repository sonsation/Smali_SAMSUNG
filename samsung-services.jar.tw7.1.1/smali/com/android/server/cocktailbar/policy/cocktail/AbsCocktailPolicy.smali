.class public abstract Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.super Ljava/lang/Object;
.source "AbsCocktailPolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;


# instance fields
.field protected mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    .line 10
    return-void
.end method


# virtual methods
.method public changeResumePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "resumePackageName"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 0
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "state"    # I

    .prologue
    .line 25
    return-void
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "isUpdated"    # Z

    .prologue
    .line 21
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
    .line 16
    const/4 v0, 0x0

    return v0
.end method
