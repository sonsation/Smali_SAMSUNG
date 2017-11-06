.class public interface abstract Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;
.super Ljava/lang/Object;
.source "SeslSupportMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public abstract getBadgeText()Ljava/lang/String;
.end method

.method public abstract getSupportActionProvider()Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract setActionView(I)Landroid/view/MenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.end method

.method public abstract setBadgeText(Ljava/lang/String;)V
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Landroid/view/MenuItem;
.end method

.method public abstract setSupportActionProvider(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;
.end method
