.class Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
.super Ljava/lang/Object;
.source "CocktailPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpadatableCocktailInfo"
.end annotation


# instance fields
.field private mCocktailList:Landroid/util/SparseBooleanArray;

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    .line 210
    iput p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mUserId:I

    .line 209
    return-void
.end method


# virtual methods
.method public disableUpdate(I)V
    .locals 1
    .param p1, "cocktailId"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 221
    return-void
.end method

.method public enableUpdate(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 217
    return-void
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mUserId:I

    return v0
.end method

.method public isUpdatedCocktail(I)Z
    .locals 1
    .param p1, "cocktailId"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
