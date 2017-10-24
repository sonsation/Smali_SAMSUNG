.class public Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5

.field private static final USER_DICTIONARY_EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field private static final USER_DICTIONARY_EXTRA_WORD:Ljava/lang/String; = "word"


# instance fields
.field private mAddToDictionaryButton:Landroid/widget/TextView;

.field private mButtonItemView:Landroid/widget/LinearLayout;

.field private mContainerMarginTop:I

.field private mContainerMarginWidth:I

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mDeleteButton:Landroid/widget/TextView;

.field private final mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

.field private mIsShowingUp:Z

.field private final mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field private mNumberOfButtons:I

.field private mNumberOfSuggestions:I

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

.field private mSuggestionListView:Landroid/widget/ListView;

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic -get5(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->clickButtons(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    .line 3660
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 3627
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 3629
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 3630
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    .line 3629
    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    .line 3634
    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$SuggestionSpanInfo;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3661
    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 3660
    return-void
.end method

.method private clickButtons(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 3999
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    if-ne p1, v8, :cond_4

    .line 4001
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-static {v8, v9}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 4002
    .local v2, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    if-nez v2, :cond_0

    .line 4004
    return-void

    .line 4006
    :cond_0
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 4007
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 4008
    .local v5, "spanStart":I
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 4009
    .local v4, "spanEnd":I
    if-ltz v5, :cond_1

    if-gt v4, v5, :cond_2

    .line 4010
    :cond_1
    return-void

    .line 4012
    :cond_2
    invoke-static {v0, v5, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 4014
    .local v3, "originalText":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4015
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "word"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4016
    const-string/jumbo v8, "locale"

    .line 4017
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4016
    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4018
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4019
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4022
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v8, v8, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 4023
    invoke-static {v0, v4}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 4024
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8, v5, v4, v10}, Landroid/widget/Editor;->-wrap27(Landroid/widget/Editor;IIZ)V

    .line 4025
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    .line 3998
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "misspelledSpan":Landroid/text/style/SuggestionSpan;
    .end local v3    # "originalText":Ljava/lang/String;
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    :cond_3
    :goto_0
    return-void

    .line 4027
    :cond_4
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    if-ne p1, v8, :cond_3

    .line 4028
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 4030
    .restart local v0    # "editable":Landroid/text/Editable;
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 4031
    .local v7, "spanUnionStart":I
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 4032
    .local v6, "spanUnionEnd":I
    if-ltz v7, :cond_7

    if-le v6, v7, :cond_7

    .line 4035
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 4036
    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    .line 4035
    if-eqz v8, :cond_6

    .line 4037
    if-eqz v7, :cond_5

    .line 4038
    add-int/lit8 v8, v7, -0x1

    invoke-interface {v0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    .line 4035
    if-eqz v8, :cond_6

    .line 4039
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 4041
    :cond_6
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 4043
    :cond_7
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    goto :goto_0
.end method

.method private hideWithCleanUp()V
    .locals 4

    .prologue
    .line 3873
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 3874
    .local v0, "info":Landroid/widget/Editor$SuggestionInfo;
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionInfo;->clear()V

    .line 3873
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3876
    .end local v0    # "info":Landroid/widget/Editor$SuggestionInfo;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-virtual {v1}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    .line 3877
    invoke-virtual {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 3872
    return-void
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V
    .locals 11
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;
    .param p2, "unionStart"    # I
    .param p3, "unionEnd"    # I

    .prologue
    .line 3948
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 3949
    .local v3, "text":Landroid/text/Spannable;
    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v2, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 3950
    .local v2, "spanStart":I
    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v1, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 3953
    .local v1, "spanEnd":I
    sub-int v6, v2, p2

    iput v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 3954
    iget v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 3955
    iget-object v7, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 3954
    add-int/2addr v6, v7

    iput v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 3957
    const-string/jumbo v5, ""

    .line 3959
    .local v5, "textAsStringCopy":Ljava/lang/String;
    :try_start_0
    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v8, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v9, 0x0

    .line 3960
    const/16 v10, 0x21

    .line 3959
    invoke-virtual {v6, v7, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3963
    invoke-interface {v3}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3964
    .local v4, "textAsString":Ljava/lang/String;
    invoke-interface {v3}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3965
    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3966
    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3947
    return-void

    .line 3967
    .end local v4    # "textAsString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3968
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "suggestionInfo.mText : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    const-string/jumbo v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "textAsString : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    const-string/jumbo v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unionStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", unionEnd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    const-string/jumbo v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spanStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", spanEnd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    throw v0
.end method

.method private updateSuggestions()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 3881
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    .line 3883
    .local v8, "spannable":Landroid/text/Spannable;
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    iget-object v12, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-virtual {v10, v11, v12}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v10

    .line 3882
    iput v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3884
    iget v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-nez v10, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-nez v10, :cond_0

    .line 3885
    return v13

    .line 3888
    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 3889
    .local v7, "spanUnionStart":I
    const/4 v6, 0x0

    .line 3891
    .local v6, "spanUnionEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v10, :cond_1

    .line 3892
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v10, v10, v2

    iget-object v5, v10, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3893
    .local v5, "spanInfo":Landroid/widget/Editor$SuggestionSpanInfo;
    iget v10, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3894
    iget v10, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3891
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3896
    .end local v5    # "spanInfo":Landroid/widget/Editor$SuggestionSpanInfo;
    :cond_1
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-eqz v10, :cond_2

    .line 3897
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3898
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3901
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v10, :cond_3

    .line 3902
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v10, v10, v2

    invoke-direct {p0, v10, v7, v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V

    .line 3901
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3906
    :cond_3
    const/16 v1, 0x8

    .line 3907
    .local v1, "addToDictionaryButtonVisibility":I
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 3908
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-eqz v10, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3914
    :cond_4
    :goto_2
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3915
    if-nez v1, :cond_7

    .line 3916
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    .line 3921
    :goto_3
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v11, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v11}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    iput-object v11, v10, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 3923
    :cond_5
    iget v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-eqz v10, :cond_8

    .line 3925
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v10, v10, v13

    iget-object v10, v10, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v9

    .line 3930
    .local v9, "underlineColor":I
    :goto_4
    if-nez v9, :cond_9

    .line 3932
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget v11, v11, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v10, v11}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 3939
    :goto_5
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 3940
    const/16 v11, 0x21

    .line 3939
    invoke-interface {v8, v10, v7, v6, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3942
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3943
    return v14

    .line 3909
    .end local v9    # "underlineColor":I
    :cond_6
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-ltz v10, :cond_4

    .line 3910
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-le v10, v11, :cond_4

    .line 3911
    const/4 v1, 0x0

    goto :goto_2

    .line 3918
    :cond_7
    iput v14, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    goto :goto_3

    .line 3927
    :cond_8
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v9

    .restart local v9    # "underlineColor":I
    goto :goto_4

    .line 3934
    :cond_9
    const v0, 0x3ecccccd    # 0.4f

    .line 3935
    .local v0, "BACKGROUND_TRANSPARENCY":F
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v11

    float-to-int v4, v10

    .line 3936
    .local v4, "newAlpha":I
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 3937
    const v11, 0xffffff

    and-int/2addr v11, v9

    shl-int/lit8 v12, v4, 0x18

    add-int/2addr v11, v12

    .line 3936
    invoke-virtual {v10, v11}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_5
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3
    .param p1, "positionY"    # I

    .prologue
    .line 3867
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3868
    .local v1, "height":I
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3869
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3666
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3667
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3668
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3669
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3670
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3665
    return-void
.end method

.method public getContentViewForTesting()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 3795
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 3857
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 3862
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic hide()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    return-void
.end method

.method protected initContentView()V
    .locals 9

    .prologue
    const v8, 0x1020502

    const v7, 0x1020501

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3675
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3676
    const-string/jumbo v4, "layout_inflater"

    .line 3675
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3678
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    .line 3677
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3680
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3681
    const v4, 0x10204ff

    .line 3680
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    .line 3682
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 3684
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3685
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    .line 3686
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    .line 3687
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mClippingLimitLeft:I

    .line 3688
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mClippingLimitRight:I

    .line 3690
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3691
    const v4, 0x1020500

    .line 3690
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    .line 3693
    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v3, p0, v5}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;)V

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    .line 3694
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3695
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3698
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/widget/Editor$SuggestionInfo;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    .line 3699
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3700
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    new-instance v4, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v4, v5}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo;)V

    aput-object v4, v3, v0

    .line 3699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3703
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3705
    const v3, 0x109016f

    .line 3704
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mButtonItemView:Landroid/widget/LinearLayout;

    .line 3706
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mButtonItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    .line 3708
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mButtonItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    .line 3728
    :goto_1
    iput v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    .line 3674
    return-void

    .line 3712
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    .line 3714
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/Editor$SuggestionsPopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$1;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3719
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    .line 3721
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/Editor$SuggestionsPopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$2;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingUp()Z
    .locals 1

    .prologue
    .line 3732
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .locals 9

    .prologue
    const/high16 v8, -0x80000000

    .line 3815
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3817
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3816
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3819
    .local v1, "horizontalMeasure":I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3818
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3821
    .local v4, "verticalMeasure":I
    const/4 v6, 0x0

    .line 3822
    .local v6, "width":I
    const/4 v5, 0x0

    .line 3823
    .local v5, "view":Landroid/view/View;
    const/4 v2, 0x0

    .end local v5    # "view":Landroid/view/View;
    .local v2, "i":I
    :goto_0
    iget v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v7, :cond_0

    .line 3824
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3825
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3826
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 3827
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3823
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3830
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 3831
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v4}, Landroid/view/View;->measure(II)V

    .line 3832
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3835
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v4}, Landroid/view/View;->measure(II)V

    .line 3836
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3838
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 3839
    iget v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    .line 3838
    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 3842
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3843
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 3842
    invoke-virtual {v7, v8, v4}, Landroid/view/View;->measure(II)V

    .line 3846
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3847
    .local v3, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 3848
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v7, v8}, Landroid/widget/Editor;->-set6(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3849
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3850
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 3852
    :cond_3
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3814
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x2

    .line 3978
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3979
    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ne p3, v1, :cond_0

    .line 3980
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->clickButtons(Landroid/view/View;)V

    .line 3977
    :goto_0
    return-void

    .line 3981
    :cond_0
    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ne p3, v1, :cond_1

    .line 3982
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->clickButtons(Landroid/view/View;)V

    goto :goto_0

    .line 3983
    :cond_1
    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-le p3, v1, :cond_2

    .line 3984
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->clickButtons(Landroid/view/View;)V

    goto :goto_0

    .line 3986
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v0, v1, p3

    .line 3987
    .local v0, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v0}, Landroid/widget/Editor;->-wrap23(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 3988
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    goto :goto_0

    .line 3992
    .end local v0    # "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v0, v1, p3

    .line 3993
    .restart local v0    # "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v0}, Landroid/widget/Editor;->-wrap23(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 3994
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    goto :goto_0
.end method

.method public onParentLostFocus()V
    .locals 1

    .prologue
    .line 3736
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 3735
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 3800
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    .line 3801
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3802
    return-void

    .line 3805
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3806
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 3807
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 3808
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 3809
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 3799
    :cond_2
    return-void
.end method

.method public bridge synthetic updatePosition(IIZZ)V
    .locals 0
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(IIZZ)V

    return-void
.end method
