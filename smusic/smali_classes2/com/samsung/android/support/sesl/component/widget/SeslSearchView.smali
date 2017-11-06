.class public Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;
.source "SeslSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->HIDDEN_METHOD_INVOKER:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 297
    const v0, 0x1010480

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    .line 139
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    .line 140
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp:[I

    .line 141
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp2:[I

    .line 192
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 204
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 211
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1040
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1062
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1227
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$9;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$9;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1495
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$10;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$10;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1507
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$11;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$11;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1807
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$12;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$12;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 303
    sget-object v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 306
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 307
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_layout:I

    sget v9, Lcom/samsung/android/support/sesl/R$layout;->sesl_search_view:I

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 309
    .local v6, "layoutResId":I
    const/4 v8, 0x1

    invoke-virtual {v4, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 311
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_src_text:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    .line 312
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v8, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setSearchView(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    .line 314
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_edit_frame:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchEditFrame:Landroid/view/View;

    .line 315
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_plate:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchPlate:Landroid/view/View;

    .line 316
    sget v8, Lcom/samsung/android/support/sesl/R$id;->submit_area:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitArea:Landroid/view/View;

    .line 317
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_button:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 318
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_go_btn:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    .line 319
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_close_btn:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 320
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_voice_btn:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 321
    sget v8, Lcom/samsung/android/support/sesl/R$id;->search_mag_icon:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 324
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchPlate:Landroid/view/View;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_queryBackground:I

    .line 325
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 324
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitArea:Landroid/view/View;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_submitBackground:I

    .line 327
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 326
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitArea:Landroid/view/View;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_submitBackground:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_searchIcon:I

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchIconResId:I

    .line 330
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_searchIcon:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_goIcon:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCloseButton:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_closeIcon:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButton:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_voiceIcon:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_searchIcon:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_searchIcon:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 339
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_suggestionRowLayout:I

    sget v9, Lcom/samsung/android/support/sesl/R$layout;->sesl_search_dropdown_item_icons_2line:I

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionRowLayout:I

    .line 341
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_commitIcon:I

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionCommitIconResId:I

    .line 343
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 350
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_TOOLTIP()I

    move-result v0

    .line 351
    .local v0, "TYPE_TOOLTIP":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 352
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 353
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 354
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 355
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 359
    .end local v0    # "TYPE_TOOLTIP":I
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 360
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 361
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 362
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 363
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 366
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 374
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_iconifiedByDefault:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setIconifiedByDefault(Z)V

    .line 376
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_maxWidth:I

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 377
    .local v7, "maxWidth":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 378
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setMaxWidth(I)V

    .line 381
    :cond_1
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_seslDefaultQueryHint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 382
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_queryHint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 384
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_imeOptions:I

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 385
    .local v3, "imeOptions":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 386
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeOptions(I)V

    .line 389
    :cond_2
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_inputType:I

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 390
    .local v5, "inputType":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 391
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setInputType(I)V

    .line 394
    :cond_3
    const/4 v2, 0x1

    .line 395
    .local v2, "focusable":Z
    sget v8, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_focusable:I

    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 396
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setFocusable(Z)V

    .line 398
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_searchIcon:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/support/sesl/R$styleable;->SeslSearchView_android_searchIcon:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.action.WEB_SEARCH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 405
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v10, "web_search"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 410
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDropDownAnchor:Landroid/view/View;

    .line 413
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    .line 417
    :cond_4
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateQueryHint()V

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 421
    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$6;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    .line 435
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 441
    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 431
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1635
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1640
    if-eqz p2, :cond_0

    .line 1641
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1643
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1644
    if-eqz p4, :cond_1

    .line 1645
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    :cond_1
    if-eqz p3, :cond_2

    .line 1648
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1651
    const-string v1, "app_data"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1653
    :cond_3
    if-eqz p5, :cond_4

    .line 1654
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1655
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1658
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1754
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1759
    :cond_0
    if-nez v1, :cond_1

    .line 1760
    const-string v1, "android.intent.action.SEARCH"

    .line 1764
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1765
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1769
    :cond_2
    if-eqz v7, :cond_3

    .line 1770
    const-string/jumbo v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1771
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1775
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1777
    .local v2, "dataUri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1778
    .local v4, "query":Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1780
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1790
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1775
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1781
    .end local v1    # "action":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1784
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1788
    .local v11, "rowNum":I
    :goto_2
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1790
    const/4 v0, 0x0

    goto :goto_1

    .line 1785
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    .line 1786
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1680
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1685
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1687
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1694
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1695
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    .line 1696
    const-string v10, "app_data"

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1702
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1705
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1706
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1707
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1708
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1710
    .local v2, "maxResults":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1711
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1712
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1714
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1715
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1717
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1718
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1720
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1721
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1724
    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1726
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1727
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1728
    const-string v11, "calling_package"

    if-nez v8, :cond_5

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1733
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1735
    return-object v9

    .line 1729
    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1665
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1666
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1667
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    return-object v1

    .line 1668
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1269
    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 907
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 908
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp2:[I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getLocationInWindow([I)V

    .line 909
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp2:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 910
    .local v1, "top":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTemp2:[I

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 911
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 912
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 1152
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 1162
    :goto_0
    return-object v0

    .line 1156
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1157
    .local v1, "textSize":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1159
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1160
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1161
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_search_view_preferred_height:I

    .line 921
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 920
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_search_view_preferred_width:I

    .line 916
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 915
    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 943
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 944
    const/4 v1, 0x0

    .line 945
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 946
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 950
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 951
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 953
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 956
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_1
    return v2

    .line 947
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1800
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1582
    if-nez p1, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1588
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1565
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1566
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1568
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1571
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1573
    const/4 v2, 0x1

    .line 1575
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->post(Ljava/lang/Runnable;)Z

    .line 996
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1532
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1533
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1534
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1537
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1539
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1540
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1543
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1546
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1550
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1600
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setSelection(I)V

    .line 1601
    return-void

    .line 1600
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 983
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 986
    .local v1, "hasText":Z
    :goto_0
    if-nez v1, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mExpandedInActionView:Z

    if-nez v4, :cond_3

    .line 987
    .local v2, "showClose":Z
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 989
    .local v0, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 990
    if-eqz v1, :cond_5

    sget-object v3, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 992
    :cond_1
    return-void

    .end local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasText":Z
    .end local v2    # "showClose":Z
    :cond_2
    move v1, v3

    .line 983
    goto :goto_0

    .restart local v1    # "hasText":Z
    :cond_3
    move v2, v3

    .line 986
    goto :goto_1

    .line 987
    .restart local v2    # "showClose":Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 990
    .restart local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v3, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateQueryHint()V
    .locals 3

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1167
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1168
    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1174
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1175
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1176
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1179
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1182
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1183
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1184
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1196
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setInputType(I)V

    .line 1197
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    if-eqz v1, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1202
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1203
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    .line 1205
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1206
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;->setQueryRefinement(I)V

    .line 1210
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 973
    const/16 v0, 0x8

    .line 974
    .local v0, "visibility":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    .line 975
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 976
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 977
    :cond_0
    const/4 v0, 0x0

    .line 979
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 980
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 964
    const/16 v0, 0x8

    .line 965
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 967
    :cond_0
    const/4 v0, 0x0

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 970
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7
    .param p1, "collapsed"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 925
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconified:Z

    .line 927
    if-eqz p1, :cond_0

    move v1, v2

    .line 929
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 931
    .local v0, "hasText":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateSubmitButton(Z)V

    .line 933
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 937
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateCloseButton()V

    .line 938
    if-nez v0, :cond_3

    :goto_3
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateVoiceButton(Z)V

    .line 939
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateSubmitArea()V

    .line 940
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    move v1, v3

    .line 927
    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_1
    move v0, v2

    .line 929
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_2
    move v5, v2

    .line 933
    goto :goto_2

    :cond_3
    move v4, v2

    .line 938
    goto :goto_3
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    .prologue
    .line 1219
    const/16 v0, 0x8

    .line 1220
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1221
    const/4 v0, 0x0

    .line 1222
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 9

    .prologue
    .line 1452
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 1453
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1454
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1455
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1456
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 1457
    .local v3, "isLayoutRtl":Z
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    if-eqz v7, :cond_1

    sget v7, Lcom/samsung/android/support/sesl/R$dimen;->sesl_search_dropdown_item_icon_width:I

    .line 1458
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/samsung/android/support/sesl/R$dimen;->sesl_search_dropdown_item_text_padding_start:I

    .line 1459
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1461
    .local v2, "iconOffset":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1463
    if-eqz v3, :cond_2

    .line 1464
    iget v7, v1, Landroid/graphics/Rect;->left:I

    neg-int v4, v7

    .line 1468
    .local v4, "offset":I
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1469
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    .line 1471
    .local v6, "width":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1473
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "offset":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "width":I
    :cond_0
    return-void

    .line 1459
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "isLayoutRtl":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1466
    .restart local v2    # "iconOffset":I
    :cond_2
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    sub-int v4, v0, v7

    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method public clearFocus()V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mClearingFocus:Z

    .line 558
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeVisibility(Z)V

    .line 559
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->clearFocus()V

    .line 560
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->clearFocus()V

    .line 561
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mClearingFocus:Z

    .line 562
    return-void
.end method

.method forceSuggestionQuery()V
    .locals 2

    .prologue
    .line 1795
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->HIDDEN_METHOD_INVOKER:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1796
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->HIDDEN_METHOD_INVOKER:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1797
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 679
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 680
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 686
    .local v0, "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 681
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 684
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1604
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1605
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1606
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1607
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1371
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->clearFocus()V

    .line 1373
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 1374
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1375
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mExpandedInActionView:Z

    .line 1376
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1390
    :goto_0
    return-void

    .line 1385
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mExpandedInActionView:Z

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCollapsedImeOptions:I

    .line 1387
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method onCloseClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1272
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1273
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1274
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_1

    .line 1276
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnCloseListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnCloseListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;

    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;->onClose()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1278
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->clearFocus()V

    .line 1280
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 1298
    :cond_1
    :goto_0
    return-void

    .line 1284
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->requestFocus()Z

    .line 1287
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/view/inputmethod/SeslInputMethodManagerReflector;->isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    .line 1288
    .local v0, "keyboard":I
    if-eqz v0, :cond_3

    .line 1291
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeVisibility(Z)V

    goto :goto_0

    .line 1293
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->post(Ljava/lang/Runnable;)Z

    .line 1016
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onDetachedFromWindow()V

    .line 1017
    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1476
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSuggestionListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSuggestionListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;

    .line 1477
    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1478
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1479
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeVisibility(Z)V

    .line 1480
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->dismissSuggestions()V

    .line 1481
    const/4 v0, 0x1

    .line 1483
    :cond_1
    return v0
.end method

.method onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSuggestionListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSuggestionListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;

    .line 1488
    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1489
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->rewriteQueryFromSuggestion(I)V

    .line 1490
    const/4 v0, 0x1

    .line 1492
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 888
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onLayout(ZIIII)V

    .line 890
    if-eqz p1, :cond_0

    .line 893
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 894
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 896
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTouchDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_1

    .line 897
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTouchDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;

    .line 899
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTouchDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mTouchDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onMeasure(II)V

    .line 884
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 849
    .local v3, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 851
    .local v2, "width":I
    sparse-switch v3, :sswitch_data_0

    .line 869
    :cond_1
    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    .line 871
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 872
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 874
    .local v0, "height":I
    sparse-switch v1, :sswitch_data_1

    .line 880
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    .line 882
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 883
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 882
    invoke-super {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onMeasure(II)V

    goto :goto_0

    .line 854
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    :sswitch_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    if-lez v4, :cond_1

    .line 855
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 860
    :sswitch_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    if-lez v4, :cond_1

    .line 861
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 866
    :sswitch_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    if-lez v4, :cond_2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    :goto_3
    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getPreferredWidth()I

    move-result v2

    goto :goto_3

    .line 877
    .restart local v0    # "height":I
    .restart local v1    # "heightMode":I
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getPreferredHeight()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 851
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 874
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1038
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1441
    instance-of v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;

    if-nez v1, :cond_0

    .line 1442
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1449
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1445
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;

    .line 1446
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1447
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 1448
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1433
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1434
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1435
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SavedState;->isIconified:Z

    .line 1436
    return-object v0
.end method

.method onSearchClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1301
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 1302
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->requestFocus()Z

    .line 1304
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/inputmethod/SeslInputMethodManagerReflector;->isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    .line 1305
    .local v0, "keyboard":I
    if-eqz v0, :cond_1

    .line 1308
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeVisibility(Z)V

    .line 1313
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1316
    :cond_0
    return-void

    .line 1310
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1254
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1255
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;

    .line 1257
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1258
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1259
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->setImeVisibility(Z)V

    .line 1262
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->dismissSuggestions()V

    .line 1265
    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1107
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return v2

    .line 1110
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    if-eqz v4, :cond_0

    .line 1113
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1116
    const/16 v4, 0x42

    if-eq p2, v4, :cond_2

    const/16 v4, 0x54

    if-eq p2, v4, :cond_2

    const/16 v4, 0x3d

    if-ne p2, v4, :cond_3

    .line 1118
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 1119
    .local v0, "position":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1124
    .end local v0    # "position":I
    :cond_3
    if-eq p2, v5, :cond_4

    const/16 v4, 0x16

    if-ne p2, v4, :cond_6

    .line 1129
    :cond_4
    if-ne p2, v5, :cond_5

    move v1, v2

    .line 1131
    .local v1, "selPoint":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setSelection(I)V

    .line 1132
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1133
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->clearListSelection()V

    .line 1134
    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->HIDDEN_METHOD_INVOKER:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    move v2, v3

    .line 1136
    goto :goto_0

    .line 1129
    .end local v1    # "selPoint":I
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    .line 1130
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->length()I

    move-result v1

    goto :goto_1

    .line 1140
    :cond_6
    const/16 v3, 0x13

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1240
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1241
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1243
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateSubmitButton(Z)V

    .line 1244
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateVoiceButton(Z)V

    .line 1245
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateCloseButton()V

    .line 1246
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateSubmitArea()V

    .line 1247
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1248
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1250
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1251
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v3

    .line 1242
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v2, v3

    .line 1244
    goto :goto_1
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 1345
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->postUpdateFocusedState()V

    .line 1346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->forceSuggestionQuery()V

    .line 1349
    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 6

    .prologue
    .line 1320
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1325
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1326
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1328
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1334
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1337
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1329
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1330
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1332
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1353
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1356
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/inputmethod/SeslInputMethodManagerReflector;->isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    .line 1357
    .local v0, "keyboard":I
    if-eqz v0, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1363
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->postUpdateFocusedState()V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 549
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 543
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 544
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 549
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 485
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 486
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1612
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1617
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 729
    if-eqz p1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onCloseClicked()V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 706
    :goto_0
    return-void

    .line 703
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mIconifiedByDefault:Z

    .line 704
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 705
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 498
    return-void
.end method

.method setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1020
    if-eqz p1, :cond_1

    .line 1021
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->post(Ljava/lang/Runnable;)Z

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1025
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1027
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setInputType(I)V

    .line 521
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 824
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mMaxWidth:I

    .line 826
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->requestLayout()V

    .line 827
    return-void
.end method

.method public setOnCloseListener(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnCloseListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnCloseListener;

    .line 581
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 590
    return-void
.end method

.method public setOnQueryTextListener(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnQueryTextListener;

    .line 572
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 611
    return-void
.end method

.method public setOnSuggestionListener(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnSuggestionListener:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$OnSuggestionListener;

    .line 599
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 631
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 632
    if-eqz p1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setSelection(I)V

    .line 634
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 638
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onSubmitQuery()V

    .line 641
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 654
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 655
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateQueryHint()V

    .line 656
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mQueryRefinement:Z

    .line 784
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;->setQueryRefinement(I)V

    .line 788
    :cond_0
    return-void

    .line 785
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 1
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 461
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateSearchAutoComplete()V

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateQueryHint()V

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButtonEnabled:Z

    .line 468
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 476
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 755
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitButtonEnabled:Z

    .line 756
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateViewsVisibility(Z)V

    .line 757
    return-void
.end method

.method public setSuggestionsAdapter(Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    .line 807
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 808
    return-void
.end method

.method updateFocusedState()V
    .locals 5

    .prologue
    .line 999
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 1000
    .local v0, "focused":Z
    if-eqz v0, :cond_2

    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->FOCUSED_STATE_SET:[I

    .line 1001
    .local v2, "stateSet":[I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1002
    .local v1, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1003
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1005
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1006
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 1007
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->invalidate()V

    .line 1010
    return-void

    .line 1000
    .end local v1    # "searchPlateBg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stateSet":[I
    .end local v3    # "submitAreaBg":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method
